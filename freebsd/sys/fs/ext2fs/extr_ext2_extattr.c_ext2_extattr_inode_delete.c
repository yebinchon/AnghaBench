
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_ext2fs {scalar_t__ e2fs_bsize; } ;
struct inode {int i_number; int i_devvp; struct m_ext2fs* i_e2fs; } ;
struct ext2fs_extattr_entry {int e_name_len; int e_name; int e_name_index; } ;
struct ext2fs_extattr_dinode_header {scalar_t__ h_magic; } ;
struct ext2fs_dinode {int e2di_extra_isize; } ;
struct buf {scalar_t__ b_data; } ;


 int E2FS_REV0_INODE_SIZE ;
 int ENOATTR ;
 int ENOTSUP ;
 struct ext2fs_extattr_entry* EXT2_EXTATTR_NEXT (struct ext2fs_extattr_entry*) ;
 struct ext2fs_extattr_entry* EXT2_IFIRST (struct ext2fs_extattr_dinode_header*) ;
 int EXT2_INODE_SIZE (struct m_ext2fs*) ;
 scalar_t__ EXT2_IS_LAST_ENTRY (struct ext2fs_extattr_entry*) ;
 scalar_t__ EXTATTR_MAGIC ;
 int NOCRED ;
 int bread (int ,int ,int,int ,struct buf**) ;
 int brelse (struct buf*) ;
 int bwrite (struct buf*) ;
 int ext2_extattr_attrnamespace_to_bsd (int ) ;
 int ext2_extattr_check (struct ext2fs_extattr_entry*,char*) ;
 int ext2_extattr_delete_entry (char*,struct ext2fs_extattr_entry*,struct ext2fs_extattr_entry*,char*) ;
 char* ext2_extattr_name_to_bsd (int ,int ,int*) ;
 int fsbtodb (struct m_ext2fs*,int ) ;
 int ino_to_fsba (struct m_ext2fs*,int ) ;
 int ino_to_fsbo (struct m_ext2fs*,int ) ;
 int memset (struct ext2fs_extattr_dinode_header*,int ,int) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

int
ext2_extattr_inode_delete(struct inode *ip, int attrnamespace, const char *name)
{
 struct m_ext2fs *fs;
 struct buf *bp;
 struct ext2fs_extattr_dinode_header *header;
 struct ext2fs_extattr_entry *entry;
 const char *attr_name;
 int name_len;
 int error;

 fs = ip->i_e2fs;

 if ((error = bread(ip->i_devvp,
     fsbtodb(fs, ino_to_fsba(fs, ip->i_number)),
     (int)fs->e2fs_bsize, NOCRED, &bp)) != 0) {
  brelse(bp);
  return (error);
 }

 struct ext2fs_dinode *dinode = (struct ext2fs_dinode *)
     ((char *)bp->b_data +
     EXT2_INODE_SIZE(fs) * ino_to_fsbo(fs, ip->i_number));


 header = (struct ext2fs_extattr_dinode_header *)((char *)dinode +
     E2FS_REV0_INODE_SIZE + dinode->e2di_extra_isize);

 if (header->h_magic != EXTATTR_MAGIC) {
  brelse(bp);
  return (ENOATTR);
 }

 error = ext2_extattr_check(EXT2_IFIRST(header),
     (char *)dinode + EXT2_INODE_SIZE(fs));
 if (error) {
  brelse(bp);
  return (error);
 }


 entry = EXT2_IFIRST(header);
 if ((EXT2_IS_LAST_ENTRY(EXT2_EXTATTR_NEXT(entry))) &&
     (ext2_extattr_attrnamespace_to_bsd(entry->e_name_index) ==
     attrnamespace)) {

  name_len = entry->e_name_len;
  attr_name = ext2_extattr_name_to_bsd(entry->e_name_index,
      entry->e_name, &name_len);
  if (!attr_name) {
   brelse(bp);
   return (ENOTSUP);
  }

  if (strlen(name) == name_len &&
      0 == strncmp(attr_name, name, name_len)) {
   memset(header, 0, sizeof(struct ext2fs_extattr_dinode_header));

   return (bwrite(bp));
  }
 }

 for (entry = EXT2_IFIRST(header); !EXT2_IS_LAST_ENTRY(entry);
     entry = EXT2_EXTATTR_NEXT(entry)) {
  if (ext2_extattr_attrnamespace_to_bsd(entry->e_name_index) !=
      attrnamespace)
   continue;

  name_len = entry->e_name_len;
  attr_name = ext2_extattr_name_to_bsd(entry->e_name_index,
      entry->e_name, &name_len);
  if (!attr_name) {
   brelse(bp);
   return (ENOTSUP);
  }

  if (strlen(name) == name_len &&
      0 == strncmp(attr_name, name, name_len)) {
   ext2_extattr_delete_entry((char *)EXT2_IFIRST(header),
       EXT2_IFIRST(header), entry,
       (char *)dinode + EXT2_INODE_SIZE(fs));

   return (bwrite(bp));
  }
 }

 brelse(bp);

 return (ENOATTR);
}
