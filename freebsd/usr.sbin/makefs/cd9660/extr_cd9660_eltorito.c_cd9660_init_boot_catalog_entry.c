
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct boot_catalog_entry {int dummy; } ;


 struct boot_catalog_entry* ecalloc (int,int) ;

__attribute__((used)) static struct boot_catalog_entry *
cd9660_init_boot_catalog_entry(void)
{
 return ecalloc(1, sizeof(struct boot_catalog_entry));
}
