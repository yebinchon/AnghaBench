
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ifmd_name; } ;
struct if_stat {char* if_name; TYPE_1__ if_mib; } ;


 int IF_NAMESIZE ;
 int memset (void*,int,int) ;
 int strlen (int *) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static void
right_align_string(struct if_stat *ifp)
{
 int str_len = 0, pad_len = 0;
 char *newstr = ((void*)0), *ptr = ((void*)0);

 if (ifp == ((void*)0) || ifp->if_mib.ifmd_name == ((void*)0))
  return;
 else {

  str_len = strlen(ifp->if_mib.ifmd_name)+1;
  pad_len = IF_NAMESIZE-(str_len);

  newstr = ifp->if_name;
  ptr = newstr + pad_len;
  (void)memset((void *)newstr, (int)' ', IF_NAMESIZE);
  (void)strncpy(ptr, (const char *)&ifp->if_mib.ifmd_name,
         str_len);
 }

 return;
}
