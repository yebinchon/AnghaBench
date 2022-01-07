
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;
struct m_ext2fs {scalar_t__ e2fs_bsize; } ;
struct inode {int i_number; int i_devvp; struct m_ext2fs* i_e2fs; } ;
struct ext2fs_extattr_entry {int e_name_len; int e_value_offs; scalar_t__ e_value_size; int e_name; int e_name_index; } ;
struct ext2fs_extattr_dinode_header {scalar_t__ h_magic; } ;
struct ext2fs_dinode {int e2di_extra_isize; } ;
struct buf {scalar_t__ b_data; } ;


 int E2FS_REV0_INODE_SIZE ;
 int ENOATTR ;
 int ENOTSUP ;
 struct ext2fs_extattr_entry* EXT2_EXTATTR_NEXT (struct ext2fs_extattr_entry*) ;
 struct ext2fs_extattr_entry* EXT2_IFIRST (struct ext2fs_extattr_dinode_header*) ;
 int EXT2_INODE_SIZE (struct m_ext2fs*) ;
 int EXT2_IS_LAST_ENTRY (struct ext2fs_extattr_entry*) ;
 scalar_t__ EXTATTR_MAGIC ;
 int NOCRED ;
 int bread (int ,int ,int,int ,struct buf**) ;
 int brelse (struct buf*) ;
 int ext2_extattr_attrnamespace_to_bsd (int ) ;
 int ext2_extattr_check (struct ext2fs_extattr_entry*,char*) ;
 char* ext2_extattr_name_to_bsd (int ,int ,int*) ;
 int fsbtodb (struct m_ext2fs*,int ) ;
 int ino_to_fsba (struct m_ext2fs*,int ) ;
 int ino_to_fsbo (struct m_ext2fs*,int ) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;
 int uiomove (char*,scalar_t__,struct uio*) ;

int
ext2_extattr_inode_get(struct inode *ip, int attrnamespace,
    const char *name, struct uio *uio, size_t *size)
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
   if (size != ((void*)0))
    *size += entry->e_value_size;

   if (uio != ((void*)0))
    error = uiomove(((char *)EXT2_IFIRST(header)) +
        entry->e_value_offs, entry->e_value_size, uio);

   brelse(bp);
   return (error);
  }
  }

 brelse(bp);

 return (ENOATTR);
}
