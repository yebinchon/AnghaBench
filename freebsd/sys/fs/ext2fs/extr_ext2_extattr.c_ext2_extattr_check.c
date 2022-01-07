
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2fs_extattr_entry {int dummy; } ;


 int EIO ;
 struct ext2fs_extattr_entry* EXT2_EXTATTR_NEXT (struct ext2fs_extattr_entry*) ;
 int EXT2_IS_LAST_ENTRY (struct ext2fs_extattr_entry*) ;

__attribute__((used)) static int
ext2_extattr_check(struct ext2fs_extattr_entry *entry, char *end)
{
 struct ext2fs_extattr_entry *next;

 while (!EXT2_IS_LAST_ENTRY(entry)) {
  next = EXT2_EXTATTR_NEXT(entry);
  if ((char *)next >= end)
   return (EIO);

  entry = next;
 }

 return (0);
}
