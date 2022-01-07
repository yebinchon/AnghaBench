
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct hhook_head {int hhh_flags; } ;


 int HHH_ISINVNET ;
 scalar_t__ HHOOK_HEADISINVNET ;

uint32_t
hhook_head_is_virtualised(struct hhook_head *hhh)
{
 uint32_t ret;

 ret = 0;

 if (hhh != ((void*)0)) {
  if (hhh->hhh_flags & HHH_ISINVNET)
   ret = HHOOK_HEADISINVNET;
 }

 return (ret);
}
