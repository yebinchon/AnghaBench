
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;


 int bootverbose ;
 int vm_page_blacklist_add (int ,int ) ;
 int vm_page_blacklist_next (char**,char*) ;

__attribute__((used)) static void
vm_page_blacklist_check(char *list, char *end)
{
 vm_paddr_t pa;
 char *next;

 next = list;
 while (next != ((void*)0)) {
  if ((pa = vm_page_blacklist_next(&next, end)) == 0)
   continue;
  vm_page_blacklist_add(pa, bootverbose);
 }
}
