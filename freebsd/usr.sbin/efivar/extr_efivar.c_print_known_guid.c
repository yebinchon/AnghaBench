
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uuid_table {char* uuid_str; char* name; } ;


 int efi_known_guid (struct uuid_table**) ;
 int printf (char*,char*,char*) ;

__attribute__((used)) static void
print_known_guid(void)
{
 struct uuid_table *tbl;
 int i, n;

 n = efi_known_guid(&tbl);
 for (i = 0; i < n; i++)
  printf("%s %s\n", tbl[i].uuid_str, tbl[i].name);
}
