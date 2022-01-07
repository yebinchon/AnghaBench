
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_4__ {TYPE_1__* p_virt; } ;
struct ecore_vf_info {TYPE_2__ bulletin; } ;
struct ecore_hwfn {int dummy; } ;
struct TYPE_3__ {int valid_bitmap; int * mac; } ;


 int MAC_ADDR_FORCED ;
 int * OSAL_NULL ;
 struct ecore_vf_info* ecore_iov_get_vf_info (struct ecore_hwfn*,int ,int) ;

u8 *ecore_iov_bulletin_get_forced_mac(struct ecore_hwfn *p_hwfn,
          u16 rel_vf_id)
{
 struct ecore_vf_info *p_vf;

 p_vf = ecore_iov_get_vf_info(p_hwfn, rel_vf_id, 1);
 if (!p_vf || !p_vf->bulletin.p_virt)
  return OSAL_NULL;

 if (!(p_vf->bulletin.p_virt->valid_bitmap & (1 << MAC_ADDR_FORCED)))
  return OSAL_NULL;

 return p_vf->bulletin.p_virt->mac;
}
