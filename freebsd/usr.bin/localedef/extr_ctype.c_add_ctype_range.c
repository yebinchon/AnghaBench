
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
typedef int ctype_node_t ;


 int INTERR ;
 int add_ctype_impl (int *) ;
 int errf (char*,scalar_t__,scalar_t__) ;
 int * get_ctype (scalar_t__) ;
 scalar_t__ last_ctype ;

void
add_ctype_range(wchar_t end)
{
 ctype_node_t *ctn;
 wchar_t cur;

 if (end < last_ctype) {
  errf("malformed character range (%u ... %u))",
      last_ctype, end);
  return;
 }
 for (cur = last_ctype + 1; cur <= end; cur++) {
  if ((ctn = get_ctype(cur)) == ((void*)0)) {
   INTERR;
   return;
  }
  add_ctype_impl(ctn);
 }
 last_ctype = end;

}
