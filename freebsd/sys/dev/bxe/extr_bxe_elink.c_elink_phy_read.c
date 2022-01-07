
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint16_t ;
struct elink_params {size_t num_phys; TYPE_1__* phy; int sc; } ;
typedef int elink_status_t ;
struct TYPE_2__ {size_t addr; } ;


 int ELINK_STATUS_ERROR ;
 int elink_cl45_read (int ,TYPE_1__*,size_t,int ,int *) ;

elink_status_t elink_phy_read(struct elink_params *params, uint8_t phy_addr,
     uint8_t devad, uint16_t reg, uint16_t *ret_val)
{
 uint8_t phy_index;



 for (phy_index = 0; phy_index < params->num_phys; phy_index++) {
  if (params->phy[phy_index].addr == phy_addr) {
   return elink_cl45_read(params->sc,
            &params->phy[phy_index], devad,
            reg, ret_val);
  }
 }
 return ELINK_STATUS_ERROR;
}
