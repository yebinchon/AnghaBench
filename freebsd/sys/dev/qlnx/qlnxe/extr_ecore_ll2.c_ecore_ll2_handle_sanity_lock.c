
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ecore_ll2_info {int dummy; } ;
struct ecore_hwfn {int dummy; } ;


 struct ecore_ll2_info* __ecore_ll2_handle_sanity (struct ecore_hwfn*,int ,int,int) ;

__attribute__((used)) static struct ecore_ll2_info *
ecore_ll2_handle_sanity_lock(struct ecore_hwfn *p_hwfn,
        u8 connection_handle)
{
 return __ecore_ll2_handle_sanity(p_hwfn, connection_handle,
      1, 1);
}
