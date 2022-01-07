
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2fs_extattr_entry {int dummy; } ;


 int M_TEMP ;
 int free (struct ext2fs_extattr_entry*,int ) ;

__attribute__((used)) static void
free_entry(struct ext2fs_extattr_entry *entry)
{

 free(entry, M_TEMP);
}
