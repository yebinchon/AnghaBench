
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vnode {TYPE_1__* v_mount; int v_type; } ;
struct inode {int i_mode; scalar_t__ i_uid; int i_flag; int i_nlink; int i_flags; int i_gid; } ;
struct componentname {int cn_flags; int cn_thread; TYPE_2__* cn_cred; } ;
struct TYPE_7__ {scalar_t__ cr_uid; } ;
struct TYPE_6__ {int mnt_flag; } ;


 int DOINGASYNC (struct vnode*) ;
 int HASBUF ;
 int IFMT ;
 int IFREG ;
 int IFTOVT (int) ;
 int IN_ACCESS ;
 int IN_CHANGE ;
 int IN_UPDATE ;
 int ISGID ;
 int ISUID ;
 int ISWHITEOUT ;
 int MNT_ACLS ;
 int MNT_SUIDDIR ;
 int PRIV_VFS_RETAINSUGID ;
 int UF_OPAQUE ;
 struct inode* VTOI (struct vnode*) ;
 int ext2_direnter (struct inode*,struct vnode*,struct componentname*) ;
 int ext2_do_posix1e_acl_inheritance_file (struct vnode*,struct vnode*,int,TYPE_2__*,int ) ;
 int ext2_update (struct vnode*,int) ;
 int ext2_valloc (struct vnode*,int,TYPE_2__*,struct vnode**) ;
 int groupmember (int ,TYPE_2__*) ;
 int panic (char*) ;
 scalar_t__ priv_check_cred (TYPE_2__*,int ) ;
 int vput (struct vnode*) ;

__attribute__((used)) static int
ext2_makeinode(int mode, struct vnode *dvp, struct vnode **vpp,
    struct componentname *cnp)
{
 struct inode *ip, *pdir;
 struct vnode *tvp;
 int error;

 pdir = VTOI(dvp);




 *vpp = ((void*)0);
 if ((mode & IFMT) == 0)
  mode |= IFREG;

 error = ext2_valloc(dvp, mode, cnp->cn_cred, &tvp);
 if (error) {
  return (error);
 }
 ip = VTOI(tvp);
 ip->i_gid = pdir->i_gid;
 ip->i_uid = cnp->cn_cred->cr_uid;

 ip->i_flag |= IN_ACCESS | IN_CHANGE | IN_UPDATE;
 ip->i_mode = mode;
 tvp->v_type = IFTOVT(mode);
 ip->i_nlink = 1;
 if ((ip->i_mode & ISGID) && !groupmember(ip->i_gid, cnp->cn_cred)) {
  if (priv_check_cred(cnp->cn_cred, PRIV_VFS_RETAINSUGID))
   ip->i_mode &= ~ISGID;
 }

 if (cnp->cn_flags & ISWHITEOUT)
  ip->i_flags |= UF_OPAQUE;




 error = ext2_update(tvp, !DOINGASYNC(tvp));
 if (error)
  goto bad;
 error = ext2_direnter(ip, dvp, cnp);
 if (error)
  goto bad;

 *vpp = tvp;
 return (0);

bad:




 ip->i_nlink = 0;
 ip->i_flag |= IN_CHANGE;
 vput(tvp);
 return (error);
}
