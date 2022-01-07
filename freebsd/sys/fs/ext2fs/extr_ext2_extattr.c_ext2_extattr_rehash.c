
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ext2fs_extattr_header {int h_hash; } ;
struct ext2fs_extattr_entry {int e_hash; } ;
typedef int hash ;


 struct ext2fs_extattr_entry* EXT2_ENTRY (struct ext2fs_extattr_header*) ;
 int EXT2_EXTATTR_BLOCK_HASH_SHIFT ;
 struct ext2fs_extattr_entry* EXT2_EXTATTR_NEXT (struct ext2fs_extattr_entry*) ;
 int EXT2_IS_LAST_ENTRY (struct ext2fs_extattr_entry*) ;
 int ext2_extattr_hash_entry (struct ext2fs_extattr_header*,struct ext2fs_extattr_entry*) ;

__attribute__((used)) static void
ext2_extattr_rehash(struct ext2fs_extattr_header *header,
    struct ext2fs_extattr_entry *entry)
{
 struct ext2fs_extattr_entry *here;
 uint32_t hash = 0;

 ext2_extattr_hash_entry(header, entry);

 here = EXT2_ENTRY(header+1);
 while (!EXT2_IS_LAST_ENTRY(here)) {
  if (!here->e_hash) {

   hash = 0;
   break;
  }

  hash = (hash << EXT2_EXTATTR_BLOCK_HASH_SHIFT) ^
      (hash >> (8*sizeof(hash) - EXT2_EXTATTR_BLOCK_HASH_SHIFT)) ^
      here->e_hash;

  here = EXT2_EXTATTR_NEXT(here);
 }

 header->h_hash = hash;
}
