
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;


 int printf (char*) ;
 int strlen (char*) ;
 scalar_t__ strtoq (char*,char**,int ) ;
 scalar_t__ trunc_page (scalar_t__) ;

__attribute__((used)) static vm_paddr_t
vm_page_blacklist_next(char **list, char *end)
{
 vm_paddr_t bad;
 char *cp, *pos;

 if (list == ((void*)0) || *list == ((void*)0))
  return (0);
 if (**list =='\0') {
  *list = ((void*)0);
  return (0);
 }





 if (end == ((void*)0))
  end = *list + strlen(*list);


 if (*end != '\0') {
  if (*end == '\n' || *end == ' ' || *end == ',')
   *end = '\0';
  else {
   printf("Blacklist not terminated, skipping\n");
   *list = ((void*)0);
   return (0);
  }
 }

 for (pos = *list; *pos != '\0'; pos = cp) {
  bad = strtoq(pos, &cp, 0);
  if (*cp == '\0' || *cp == ' ' || *cp == ',' || *cp == '\n') {
   if (bad == 0) {
    if (++cp < end)
     continue;
    else
     break;
   }
  } else
   break;
  if (*cp == '\0' || ++cp >= end)
   *list = ((void*)0);
  else
   *list = cp;
  return (trunc_page(bad));
 }
 printf("Garbage in RAM blacklist, skipping\n");
 *list = ((void*)0);
 return (0);
}
