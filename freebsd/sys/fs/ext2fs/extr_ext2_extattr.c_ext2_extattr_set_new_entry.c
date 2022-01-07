
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct uio {int uio_resid; } ;
struct ext2fs_extattr_entry {int e_value_offs; int e_name_index; int e_name_len; scalar_t__ e_value_size; int e_name; } ;


 int EXT2_EXTATTR_LEN (int) ;
 struct ext2fs_extattr_entry* EXT2_EXTATTR_NEXT (struct ext2fs_extattr_entry*) ;
 int EXT2_EXTATTR_SIZE (scalar_t__) ;
 int EXT2_IS_LAST_ENTRY (struct ext2fs_extattr_entry*) ;
 struct ext2fs_extattr_entry* allocate_entry (char const*,int,int ,int ,int ) ;
 int free_entry (struct ext2fs_extattr_entry*) ;
 scalar_t__ memcmp (char const*,int ,int) ;
 int memcpy (struct ext2fs_extattr_entry*,struct ext2fs_extattr_entry*,int) ;
 int memmove (char*,struct ext2fs_extattr_entry*,int) ;
 int strlen (char const*) ;
 int uiomove (char*,scalar_t__,struct uio*) ;

__attribute__((used)) static struct ext2fs_extattr_entry *
ext2_extattr_set_new_entry(char *off, struct ext2fs_extattr_entry *first_entry,
    const char *name, int attrnamespace, char *end, struct uio *uio)
{
 int name_len;
 char *pad;
 uint16_t min_offs;
 struct ext2fs_extattr_entry *entry;
 struct ext2fs_extattr_entry *new_entry;


 min_offs = end - off;
 entry = first_entry;
 while (!EXT2_IS_LAST_ENTRY(entry)) {
  if (min_offs > entry->e_value_offs && entry->e_value_offs > 0)
   min_offs = entry->e_value_offs;

  entry = EXT2_EXTATTR_NEXT(entry);
 }

 pad = (char*)entry + sizeof(uint32_t);


 name_len = strlen(name);
 entry = first_entry;
 while (!EXT2_IS_LAST_ENTRY(entry)) {
  if (!(attrnamespace - entry->e_name_index) &&
      !(name_len - entry->e_name_len))
   if (memcmp(name, entry->e_name, name_len) <= 0)
    break;

  entry = EXT2_EXTATTR_NEXT(entry);
 }


 new_entry = allocate_entry(name, attrnamespace, 0, uio->uio_resid, 0);
 memmove((char *)entry + EXT2_EXTATTR_LEN(new_entry->e_name_len), entry,
     pad - (char*)entry);

 memcpy(entry, new_entry, EXT2_EXTATTR_LEN(new_entry->e_name_len));
 free_entry(new_entry);

 new_entry = entry;
 if (new_entry->e_value_size > 0)
  new_entry->e_value_offs = min_offs -
      EXT2_EXTATTR_SIZE(new_entry->e_value_size);

 uiomove(off + new_entry->e_value_offs, new_entry->e_value_size, uio);

 return (new_entry);
}
