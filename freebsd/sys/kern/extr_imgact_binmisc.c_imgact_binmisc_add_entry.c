
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ xbe_msize; char* xbe_name; char* xbe_interpreter; } ;
typedef TYPE_1__ ximgact_binmisc_entry_t ;
typedef int imgact_binmisc_entry_t ;


 int EEXIST ;
 int EINVAL ;
 int IBE_INTERP_LEN_MAX ;
 scalar_t__ IBE_MAGIC_MAX ;
 int IBE_NAME_MAX ;


 int SLIST_INSERT_HEAD (int *,int *,int ) ;
 int * imgact_binmisc_find_entry (char*) ;
 int * imgact_binmisc_new_entry (TYPE_1__*) ;
 int interp_list_entry_count ;
 int interp_list_sx ;
 int interpreter_list ;
 int isascii (int) ;
 int link ;
 char* strchr (char*,char) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static int
imgact_binmisc_add_entry(ximgact_binmisc_entry_t *xbe)
{
 imgact_binmisc_entry_t *ibe;
 char *p;
 int cnt;

 if (xbe->xbe_msize > IBE_MAGIC_MAX)
  return (EINVAL);

 for(cnt = 0, p = xbe->xbe_name; *p != 0; cnt++, p++)
  if (cnt >= IBE_NAME_MAX || !isascii((int)*p))
   return (EINVAL);

 for(cnt = 0, p = xbe->xbe_interpreter; *p != 0; cnt++, p++)
  if (cnt >= IBE_INTERP_LEN_MAX || !isascii((int)*p))
   return (EINVAL);


 p = xbe->xbe_interpreter;
 while (1) {
  p = strchr(p, '#');
  if (!p)
   break;

  p++;
  switch(*p) {
  case 128:

   p++;
   break;

  case 129:

   p++;
   break;

  case 0:
  default:

   return (EINVAL);
  }
 }

 sx_xlock(&interp_list_sx);
 if (imgact_binmisc_find_entry(xbe->xbe_name) != ((void*)0)) {
  sx_xunlock(&interp_list_sx);
  return (EEXIST);
 }


 ibe = imgact_binmisc_new_entry(xbe);

 SLIST_INSERT_HEAD(&interpreter_list, ibe, link);
 interp_list_entry_count++;
 sx_xunlock(&interp_list_sx);

 return (0);
}
