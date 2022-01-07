
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct vnode {int dummy; } ;
struct m_ext2fs {int e2fs_bsize; scalar_t__ e2fs_uhash; struct ext2fs* e2fs; } ;
struct inode {int i_flag; struct m_ext2fs* i_e2fs; } ;
struct ext2fs_htree_lookup_info {scalar_t__ h_hash_version; int h_info_len; int h_levels_num; TYPE_1__* h_levels; } ;
struct ext2fs_htree_root {struct ext2fs_htree_lookup_info h_info; int h_entries; int h_dotdot; } ;
struct ext2fs_direct_2 {int e2d_reclen; } ;
struct ext2fs {scalar_t__ e3fs_def_hash_version; int e3fs_hash_seed; } ;
struct componentname {int dummy; } ;
struct buf {scalar_t__ b_data; } ;
typedef int info ;
struct TYPE_2__ {int h_entry; int h_entries; } ;


 scalar_t__ DOINGASYNC (struct vnode*) ;
 int EXT2_DIR_REC_LEN (int) ;
 scalar_t__ EXT2_HTREE_TEA ;
 int IN_CHANGE ;
 int IN_E3INDEX ;
 int IN_UPDATE ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 struct inode* VTOI (struct vnode*) ;
 int bdwrite (struct buf*) ;
 int brelse (struct buf*) ;
 int bwrite (struct buf*) ;
 int ext2_blkatoff (struct vnode*,int ,int *,struct buf**) ;
 int ext2_dirent_csum_set (struct inode*,struct ext2fs_direct_2*) ;
 int ext2_dx_csum_set (struct inode*,struct ext2fs_direct_2*) ;
 int ext2_htree_append_block (struct vnode*,char*,struct componentname*,int) ;
 int ext2_htree_insert_entry (struct ext2fs_htree_lookup_info*,int,int) ;
 int ext2_htree_root_limit (struct inode*,int) ;
 int ext2_htree_set_block (int ,int) ;
 int ext2_htree_set_count (int ,int) ;
 int ext2_htree_set_limit (int ,int ) ;
 int ext2_htree_split_dirblock (struct inode*,char*,char*,int,int ,scalar_t__,int*,struct ext2fs_direct_2*) ;
 int free (char*,int ) ;
 char* malloc (int,int ,int) ;
 int memcpy (char*,struct ext2fs_direct_2*,int) ;
 int memset (struct ext2fs_htree_lookup_info*,int ,int) ;

int
ext2_htree_create_index(struct vnode *vp, struct componentname *cnp,
    struct ext2fs_direct_2 *new_entry)
{
 struct buf *bp = ((void*)0);
 struct inode *dp;
 struct ext2fs *fs;
 struct m_ext2fs *m_fs;
 struct ext2fs_direct_2 *ep, *dotdot;
 struct ext2fs_htree_root *root;
 struct ext2fs_htree_lookup_info info;
 uint32_t blksize, dirlen, split_hash;
 uint8_t hash_version;
 char *buf1 = ((void*)0);
 char *buf2 = ((void*)0);
 int error = 0;

 dp = VTOI(vp);
 fs = dp->i_e2fs->e2fs;
 m_fs = dp->i_e2fs;
 blksize = m_fs->e2fs_bsize;

 buf1 = malloc(blksize, M_TEMP, M_WAITOK | M_ZERO);
 buf2 = malloc(blksize, M_TEMP, M_WAITOK | M_ZERO);

 if ((error = ext2_blkatoff(vp, 0, ((void*)0), &bp)) != 0)
  goto out;

 root = (struct ext2fs_htree_root *)bp->b_data;
 dotdot = (struct ext2fs_direct_2 *)((char *)&(root->h_dotdot));
 ep = (struct ext2fs_direct_2 *)((char *)dotdot + dotdot->e2d_reclen);
 dirlen = (char *)root + blksize - (char *)ep;
 memcpy(buf1, ep, dirlen);
 ep = (struct ext2fs_direct_2 *)buf1;
 while ((char *)ep < buf1 + dirlen)
  ep = (struct ext2fs_direct_2 *)
      ((char *)ep + ep->e2d_reclen);
 ep->e2d_reclen = buf1 + blksize - (char *)ep;

 dp->i_flag |= IN_E3INDEX;




 dotdot->e2d_reclen = blksize - EXT2_DIR_REC_LEN(1);
 memset(&root->h_info, 0, sizeof(root->h_info));
 root->h_info.h_hash_version = fs->e3fs_def_hash_version;
 root->h_info.h_info_len = sizeof(root->h_info);
 ext2_htree_set_block(root->h_entries, 1);
 ext2_htree_set_count(root->h_entries, 1);
 ext2_htree_set_limit(root->h_entries,
     ext2_htree_root_limit(dp, sizeof(root->h_info)));

 memset(&info, 0, sizeof(info));
 info.h_levels_num = 1;
 info.h_levels[0].h_entries = root->h_entries;
 info.h_levels[0].h_entry = root->h_entries;

 hash_version = root->h_info.h_hash_version;
 if (hash_version <= EXT2_HTREE_TEA)
  hash_version += m_fs->e2fs_uhash;
 ext2_htree_split_dirblock(dp, buf1, buf2, blksize, fs->e3fs_hash_seed,
     hash_version, &split_hash, new_entry);
 ext2_htree_insert_entry(&info, split_hash, 2);




 ext2_dx_csum_set(dp, (struct ext2fs_direct_2 *)bp->b_data);
 if (DOINGASYNC(vp)) {
  bdwrite(bp);
  error = 0;
 } else {
  error = bwrite(bp);
 }
 dp->i_flag |= IN_CHANGE | IN_UPDATE;
 if (error)
  goto out;




 ext2_dirent_csum_set(dp, (struct ext2fs_direct_2 *)buf1);
 error = ext2_htree_append_block(vp, buf1, cnp, blksize);
 if (error)
  goto out1;




 ext2_dirent_csum_set(dp, (struct ext2fs_direct_2 *)buf2);
 error = ext2_htree_append_block(vp, buf2, cnp, blksize);

 free(buf1, M_TEMP);
 free(buf2, M_TEMP);
 return (error);
out:
 if (bp != ((void*)0))
  brelse(bp);
out1:
 free(buf1, M_TEMP);
 free(buf2, M_TEMP);
 return (error);
}
