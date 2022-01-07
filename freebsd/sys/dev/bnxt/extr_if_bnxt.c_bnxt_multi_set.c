
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int idi_map; int idi_tag; int idi_size; int * idi_vaddr; } ;
struct TYPE_4__ {int mc_list_count; int rx_mask; TYPE_1__ mc_list; } ;
struct bnxt_softc {int dev; TYPE_2__ vnic_info; } ;
typedef int if_t ;
typedef int if_ctx_t ;


 int BNXT_MAX_MC_ADDRS ;
 int BUS_DMASYNC_PREWRITE ;
 int HWRM_CFA_L2_SET_RX_MASK_INPUT_MASK_ALL_MCAST ;
 int HWRM_CFA_L2_SET_RX_MASK_INPUT_MASK_MCAST ;
 int bnxt_copy_maddr ;
 scalar_t__ bnxt_hwrm_cfa_l2_set_rx_mask (struct bnxt_softc*,TYPE_2__*) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bzero (int *,int ) ;
 int device_printf (int ,char*) ;
 int if_foreach_llmaddr (int ,int ,int *) ;
 int iflib_get_ifp (int ) ;
 struct bnxt_softc* iflib_get_softc (int ) ;

__attribute__((used)) static void
bnxt_multi_set(if_ctx_t ctx)
{
 struct bnxt_softc *softc = iflib_get_softc(ctx);
 if_t ifp = iflib_get_ifp(ctx);
 uint8_t *mta;
 int mcnt;

 mta = softc->vnic_info.mc_list.idi_vaddr;
 bzero(mta, softc->vnic_info.mc_list.idi_size);
 mcnt = if_foreach_llmaddr(ifp, bnxt_copy_maddr, mta);

 if (mcnt > BNXT_MAX_MC_ADDRS) {
  softc->vnic_info.rx_mask |=
      HWRM_CFA_L2_SET_RX_MASK_INPUT_MASK_ALL_MCAST;
  bnxt_hwrm_cfa_l2_set_rx_mask(softc, &softc->vnic_info);
 } else {
  softc->vnic_info.rx_mask &=
      ~HWRM_CFA_L2_SET_RX_MASK_INPUT_MASK_ALL_MCAST;
  bus_dmamap_sync(softc->vnic_info.mc_list.idi_tag,
      softc->vnic_info.mc_list.idi_map, BUS_DMASYNC_PREWRITE);
  softc->vnic_info.mc_list_count = mcnt;
  softc->vnic_info.rx_mask |=
      HWRM_CFA_L2_SET_RX_MASK_INPUT_MASK_MCAST;
  if (bnxt_hwrm_cfa_l2_set_rx_mask(softc, &softc->vnic_info))
   device_printf(softc->dev,
       "set_multi: rx_mask set failed\n");
 }
}
