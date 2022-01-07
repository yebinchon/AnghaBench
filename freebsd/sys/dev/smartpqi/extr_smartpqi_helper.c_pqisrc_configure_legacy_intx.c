
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {TYPE_1__* pqi_reg; } ;
typedef TYPE_2__ pqisrc_softstate_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_6__ {int legacy_intr_mask_set; int legacy_intr_mask_clr; } ;


 int DBG_FUNC (char*) ;
 int PCI_MEM_GET32 (TYPE_2__*,int *,int ) ;
 int PCI_MEM_PUT32 (TYPE_2__*,int *,int ,int ) ;
 int PQISRC_LEGACY_INTX_MASK ;
 int PQI_LEGACY_INTR_MASK_CLR ;

void pqisrc_configure_legacy_intx(pqisrc_softstate_t *softs, boolean_t enable_intx)
{
 uint32_t intx_mask;
 uint32_t *reg_addr = ((void*)0);

 DBG_FUNC("IN\n");

 if (enable_intx)
  reg_addr = &softs->pqi_reg->legacy_intr_mask_clr;
 else
  reg_addr = &softs->pqi_reg->legacy_intr_mask_set;

 intx_mask = PCI_MEM_GET32(softs, reg_addr, PQI_LEGACY_INTR_MASK_CLR);
 intx_mask |= PQISRC_LEGACY_INTX_MASK;
 PCI_MEM_PUT32(softs, reg_addr, PQI_LEGACY_INTR_MASK_CLR ,intx_mask);

 DBG_FUNC("OUT\n");
}
