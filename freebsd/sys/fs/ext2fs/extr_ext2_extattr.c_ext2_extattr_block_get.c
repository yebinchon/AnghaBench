
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;
struct m_ext2fs {int e2fs_bsize; } ;
struct inode {int i_facl; int i_devvp; struct m_ext2fs* i_e2fs; } ;
struct ext2fs_extattr_header {scalar_t__ h_magic; int h_blocks; } ;
struct ext2fs_extattr_entry {int e_name_len; size_t e_value_size; scalar_t__ e_value_offs; int e_name; int e_name_index; } ;
struct buf {scalar_t__ b_data; } ;


 int EINVAL ;
 int ENOATTR ;
 int ENOTSUP ;
 struct ext2fs_extattr_entry* EXT2_EXTATTR_NEXT (struct ext2fs_extattr_entry*) ;
 struct ext2fs_extattr_entry* EXT2_FIRST_ENTRY (struct buf*) ;
 struct ext2fs_extattr_header* EXT2_HDR (struct buf*) ;
 int EXT2_IS_LAST_ENTRY (struct ext2fs_extattr_entry*) ;
 scalar_t__ EXTATTR_MAGIC ;
 int NOCRED ;
 int bread (int ,int ,int ,int ,struct buf**) ;
 int brelse (struct buf*) ;
 int ext2_extattr_attrnamespace_to_bsd (int ) ;
 int ext2_extattr_block_check (struct inode*,struct buf*) ;
 char* ext2_extattr_name_to_bsd (int ,int ,int*) ;
 int fsbtodb (struct m_ext2fs*,int ) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;
 int uiomove (scalar_t__,size_t,struct uio*) ;

int
ext2_extattr_block_get(struct inode *ip, int attrnamespace,
    const char *name, struct uio *uio, size_t *size)
{
 struct m_ext2fs *fs;
 struct buf *bp;
 struct ext2fs_extattr_header *header;
 struct ext2fs_extattr_entry *entry;
 const char *attr_name;
 int name_len;
 int error;

 fs = ip->i_e2fs;

 error = bread(ip->i_devvp, fsbtodb(fs, ip->i_facl),
     fs->e2fs_bsize, NOCRED, &bp);
 if (error) {
  return (error);
 }


 header = EXT2_HDR(bp);
 if (header->h_magic != EXTATTR_MAGIC || header->h_blocks != 1) {
  brelse(bp);
  return (EINVAL);
 }

 error = ext2_extattr_block_check(ip, bp);
 if (error) {
  brelse(bp);
  return (error);
 }

 for (entry = EXT2_FIRST_ENTRY(bp); !EXT2_IS_LAST_ENTRY(entry);
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
    error = uiomove(bp->b_data + entry->e_value_offs,
        entry->e_value_size, uio);

   brelse(bp);
   return (error);
  }
  }

 brelse(bp);

 return (ENOATTR);
}
