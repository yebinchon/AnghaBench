
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int * bins; } ;
struct TYPE_4__ {int update_approx_mcast_flg; } ;
struct vport_update_ramrod_data {TYPE_1__ approx_mcast; TYPE_2__ common; } ;
struct ecore_sp_vport_update_params {int * bins; int update_approx_mcast_flg; } ;


 int ETH_MULTICAST_MAC_BINS_IN_REGS ;
 int OSAL_CPU_TO_LE32 (int ) ;
 int OSAL_MEMSET (int **,int ,int) ;

__attribute__((used)) static void
ecore_sp_update_mcast_bin(struct vport_update_ramrod_data *p_ramrod,
     struct ecore_sp_vport_update_params *p_params)
{
 int i;

 OSAL_MEMSET(&p_ramrod->approx_mcast.bins, 0,
      sizeof(p_ramrod->approx_mcast.bins));

 if (!p_params->update_approx_mcast_flg)
  return;

 p_ramrod->common.update_approx_mcast_flg = 1;
 for (i = 0; i < ETH_MULTICAST_MAC_BINS_IN_REGS; i++) {
  u32 *p_bins = p_params->bins;

  p_ramrod->approx_mcast.bins[i] = OSAL_CPU_TO_LE32(p_bins[i]);
 }
}
