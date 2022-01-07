
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct inode {int i_flag; int i_size; int i_offset; scalar_t__ i_count; int i_endoff; TYPE_1__* i_e2fs; int i_mode; int i_number; } ;
struct ext2fs_direct_2 {int e2d_name; int e2d_type; scalar_t__ e2d_namlen; int e2d_ino; } ;
struct componentname {int cn_flags; int cn_thread; int cn_cred; scalar_t__ cn_namelen; int cn_nameptr; } ;
typedef int off_t ;
struct TYPE_3__ {int e2fs_bsize; } ;


 int DTTOFT (int ) ;
 int EXT2F_COMPAT_DIRHASHINDEX ;
 int EXT2F_INCOMPAT_FTYPE ;
 int EXT2_FT_UNKNOWN ;
 scalar_t__ EXT2_HAS_COMPAT_FEATURE (TYPE_1__*,int ) ;
 scalar_t__ EXT2_HAS_INCOMPAT_FEATURE (TYPE_1__*,int ) ;
 int IFTODT (int ) ;
 int IN_CHANGE ;
 int IN_E3INDEX ;
 int IN_UPDATE ;
 int IO_SYNC ;
 int SAVENAME ;
 struct inode* VTOI (struct vnode*) ;
 int bcopy (int ,int ,unsigned int) ;
 int ext2_add_entry (struct vnode*,struct ext2fs_direct_2*) ;
 int ext2_add_first_entry (struct vnode*,struct ext2fs_direct_2*,struct componentname*) ;
 int ext2_htree_add_entry (struct vnode*,struct ext2fs_direct_2*,struct componentname*) ;
 int ext2_htree_create_index (struct vnode*,struct componentname*,struct ext2fs_direct_2*) ;
 scalar_t__ ext2_htree_has_idx (struct inode*) ;
 int ext2_truncate (struct vnode*,int ,int ,int ,int ) ;
 int panic (char*) ;

int
ext2_direnter(struct inode *ip, struct vnode *dvp, struct componentname *cnp)
{
 struct inode *dp;
 struct ext2fs_direct_2 newdir;
 int DIRBLKSIZ = ip->i_e2fs->e2fs_bsize;
 int error;






 dp = VTOI(dvp);
 newdir.e2d_ino = ip->i_number;
 newdir.e2d_namlen = cnp->cn_namelen;
 if (EXT2_HAS_INCOMPAT_FEATURE(ip->i_e2fs,
     EXT2F_INCOMPAT_FTYPE))
  newdir.e2d_type = DTTOFT(IFTODT(ip->i_mode));
 else
  newdir.e2d_type = EXT2_FT_UNKNOWN;
 bcopy(cnp->cn_nameptr, newdir.e2d_name, (unsigned)cnp->cn_namelen + 1);

 if (ext2_htree_has_idx(dp)) {
  error = ext2_htree_add_entry(dvp, &newdir, cnp);
  if (error) {
   dp->i_flag &= ~IN_E3INDEX;
   dp->i_flag |= IN_CHANGE | IN_UPDATE;
  }
  return (error);
 }

 if (EXT2_HAS_COMPAT_FEATURE(ip->i_e2fs, EXT2F_COMPAT_DIRHASHINDEX) &&
     !ext2_htree_has_idx(dp)) {
  if ((dp->i_size / DIRBLKSIZ) == 1 &&
      dp->i_offset == DIRBLKSIZ) {




   return ext2_htree_create_index(dvp, cnp, &newdir);
  }
 }







 if (dp->i_count == 0)
  return ext2_add_first_entry(dvp, &newdir, cnp);

 error = ext2_add_entry(dvp, &newdir);
 if (!error && dp->i_endoff && dp->i_endoff < dp->i_size)
  error = ext2_truncate(dvp, (off_t)dp->i_endoff, IO_SYNC,
      cnp->cn_cred, cnp->cn_thread);
 return (error);
}
