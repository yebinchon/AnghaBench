
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct bxe_softc {int dummy; } ;
typedef int elink_status_t ;


 int ELINK_STATUS_ERROR ;
 int ELINK_STATUS_OK ;
 int NIG_REG_P0_RX_COS0_PRIORITY_MASK ;
 int NIG_REG_P0_RX_COS1_PRIORITY_MASK ;
 int NIG_REG_P0_RX_COS2_PRIORITY_MASK ;
 int NIG_REG_P0_RX_COS3_PRIORITY_MASK ;
 int NIG_REG_P0_RX_COS4_PRIORITY_MASK ;
 int NIG_REG_P0_RX_COS5_PRIORITY_MASK ;
 int NIG_REG_P1_RX_COS0_PRIORITY_MASK ;
 int NIG_REG_P1_RX_COS1_PRIORITY_MASK ;
 int NIG_REG_P1_RX_COS2_PRIORITY_MASK ;
 int REG_WR (struct bxe_softc*,int ,int ) ;

__attribute__((used)) static elink_status_t elink_pfc_nig_rx_priority_mask(struct bxe_softc *sc,
        uint8_t cos_entry,
        uint32_t priority_mask, uint8_t port)
{
 uint32_t nig_reg_rx_priority_mask_add = 0;

 switch (cos_entry) {
 case 0:
      nig_reg_rx_priority_mask_add = (port) ?
   NIG_REG_P1_RX_COS0_PRIORITY_MASK :
   NIG_REG_P0_RX_COS0_PRIORITY_MASK;
      break;
 case 1:
     nig_reg_rx_priority_mask_add = (port) ?
  NIG_REG_P1_RX_COS1_PRIORITY_MASK :
  NIG_REG_P0_RX_COS1_PRIORITY_MASK;
     break;
 case 2:
     nig_reg_rx_priority_mask_add = (port) ?
  NIG_REG_P1_RX_COS2_PRIORITY_MASK :
  NIG_REG_P0_RX_COS2_PRIORITY_MASK;
     break;
 case 3:
     if (port)
  return ELINK_STATUS_ERROR;
     nig_reg_rx_priority_mask_add = NIG_REG_P0_RX_COS3_PRIORITY_MASK;
     break;
 case 4:
     if (port)
  return ELINK_STATUS_ERROR;
     nig_reg_rx_priority_mask_add = NIG_REG_P0_RX_COS4_PRIORITY_MASK;
     break;
 case 5:
     if (port)
  return ELINK_STATUS_ERROR;
     nig_reg_rx_priority_mask_add = NIG_REG_P0_RX_COS5_PRIORITY_MASK;
     break;
 }

 REG_WR(sc, nig_reg_rx_priority_mask_add, priority_mask);

 return ELINK_STATUS_OK;
}
