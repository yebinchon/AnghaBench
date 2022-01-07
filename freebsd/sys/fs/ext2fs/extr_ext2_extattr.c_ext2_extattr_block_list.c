
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;
struct m_ext2fs {int e2fs_bsize; } ;
struct inode {int i_facl; int i_devvp; struct m_ext2fs* i_e2fs; } ;
struct ext2fs_extattr_header {scalar_t__ h_magic; int h_blocks; } ;
struct ext2fs_extattr_entry {int e_name_len; int e_name; int e_name_index; } ;
struct buf {int dummy; } ;


 int EINVAL ;
 int ENOTSUP ;
 struct ext2fs_extattr_entry* EXT2_EXTATTR_NEXT (struct ext2fs_extattr_entry*) ;
 struct ext2fs_extattr_entry* EXT2_FIRST_ENTRY (struct buf*) ;
 struct ext2fs_extattr_header* EXT2_HDR (struct buf*) ;
 int EXT2_IS_LAST_ENTRY (struct ext2fs_extattr_entry*) ;
 scalar_t__ EXTATTR_MAGIC ;
 int M_TEMP ;
 int M_WAITOK ;
 int NOCRED ;
 int bread (int ,int ,int ,int ,struct buf**) ;
 int brelse (struct buf*) ;
 int ext2_extattr_attrnamespace_to_bsd (int ) ;
 int ext2_extattr_block_check (struct inode*,struct buf*) ;
 char* ext2_extattr_name_to_bsd (int ,int ,int*) ;
 int free (char*,int ) ;
 int fsbtodb (struct m_ext2fs*,int ) ;
 char* malloc (int,int ,int ) ;
 int memcpy (char*,char const*,int) ;
 int uiomove (char*,int,struct uio*) ;

int
ext2_extattr_block_list(struct inode *ip, int attrnamespace,
    struct uio *uio, size_t *size)
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

  if (size != ((void*)0))
   *size += name_len + 1;

  if (uio != ((void*)0)) {
   char *name = malloc(name_len + 1, M_TEMP, M_WAITOK);
   name[0] = name_len;
   memcpy(&name[1], attr_name, name_len);
   error = uiomove(name, name_len + 1, uio);
   free(name, M_TEMP);
   if (error)
    break;
  }
 }

 brelse(bp);

 return (error);
}
