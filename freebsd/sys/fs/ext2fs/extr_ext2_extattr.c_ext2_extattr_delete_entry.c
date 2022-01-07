
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ext2fs_extattr_entry {int e_name_len; } ;


 int EXT2_EXTATTR_LEN (int ) ;
 struct ext2fs_extattr_entry* EXT2_EXTATTR_NEXT (struct ext2fs_extattr_entry*) ;
 int EXT2_IS_LAST_ENTRY (struct ext2fs_extattr_entry*) ;
 int ext2_extattr_delete_value (char*,struct ext2fs_extattr_entry*,struct ext2fs_extattr_entry*,char*) ;
 int memmove (struct ext2fs_extattr_entry*,char*,int) ;

__attribute__((used)) static void
ext2_extattr_delete_entry(char *off,
    struct ext2fs_extattr_entry *first_entry,
    struct ext2fs_extattr_entry *entry, char *end)
{
 char *pad;
 struct ext2fs_extattr_entry *next;


 ext2_extattr_delete_value(off, first_entry, entry, end);


 next = first_entry;
 while (!EXT2_IS_LAST_ENTRY(next))
  next = EXT2_EXTATTR_NEXT(next);

 pad = (char*)next + sizeof(uint32_t);

 memmove(entry, (char *)entry + EXT2_EXTATTR_LEN(entry->e_name_len),
     pad - ((char *)entry + EXT2_EXTATTR_LEN(entry->e_name_len)));
}
