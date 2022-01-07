
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hhook_head {int dummy; } ;
typedef int int32_t ;


 struct hhook_head* hhook_head_get (int ,int ) ;
 int hhook_head_is_virtualised (struct hhook_head*) ;
 int hhook_head_release (struct hhook_head*) ;

uint32_t
hhook_head_is_virtualised_lookup(int32_t hook_type, int32_t hook_id)
{
 struct hhook_head *hhh;
 uint32_t ret;

 hhh = hhook_head_get(hook_type, hook_id);

 if (hhh == ((void*)0))
  return (0);

 ret = hhook_head_is_virtualised(hhh);
 hhook_head_release(hhh);

 return (ret);
}
