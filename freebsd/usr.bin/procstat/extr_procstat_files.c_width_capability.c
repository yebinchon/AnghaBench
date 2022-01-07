
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

__attribute__((used)) static u_int
width_capability(cap_rights_t *rightsp)
{
 u_int count, i, width;

 count = 0;
 width = 0;
 for (i = 0; i < cap_desc_count; i++) {
  if (cap_rights_is_set(rightsp, cap_desc[i].cd_right)) {
   width += strlen(cap_desc[i].cd_desc);
   if (count)
    width++;
   count++;
  }
 }
 return (width);
}
