
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
typedef int cap_rights_t ;
struct TYPE_2__ {int cd_desc; int cd_right; } ;


 TYPE_1__* cap_desc ;
 size_t cap_desc_count ;
 scalar_t__ cap_rights_is_set (int *,int ) ;
 size_t strlen (int ) ;
 size_t width_capability (int *) ;
 int xo_close_list (char*) ;
 int xo_emit (char*,...) ;
 int xo_open_list (char*) ;

__attribute__((used)) static void
print_capability(cap_rights_t *rightsp, u_int capwidth)
{
 u_int count, i, width;

 count = 0;
 width = 0;
 for (i = width_capability(rightsp); i < capwidth; i++) {
  if (i != 0)
   xo_emit(" ");
  else
   xo_emit("-");
 }
 xo_open_list("capabilities");
 for (i = 0; i < cap_desc_count; i++) {
  if (cap_rights_is_set(rightsp, cap_desc[i].cd_right)) {
   xo_emit("{D:/%s}{l:capabilities/%s}", count ? "," : "",
       cap_desc[i].cd_desc);
   width += strlen(cap_desc[i].cd_desc);
   if (count)
    width++;
   count++;
  }
 }
 xo_close_list("capabilities");
}
