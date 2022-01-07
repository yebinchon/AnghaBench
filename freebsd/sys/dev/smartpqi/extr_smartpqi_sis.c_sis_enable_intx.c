
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {TYPE_1__* ioa_reg; } ;
typedef TYPE_2__ pqisrc_softstate_t ;
struct TYPE_7__ {int host_to_ioa_db; } ;


 int DBG_ERR (char*) ;
 int DBG_FUNC (char*) ;
 int LEGACY_SIS_IDBR ;
 int PCI_MEM_GET32 (TYPE_2__*,int *,int ) ;
 int PCI_MEM_PUT32 (TYPE_2__*,int *,int ,int ) ;
 scalar_t__ PQI_STATUS_SUCCESS ;
 int SIS_ENABLE_INTX ;
 scalar_t__ pqisrc_sis_wait_for_db_bit_to_clear (TYPE_2__*,int ) ;

void sis_enable_intx(pqisrc_softstate_t *softs)
{
 uint32_t db_reg;

 DBG_FUNC("IN\n");

 db_reg = PCI_MEM_GET32(softs, &softs->ioa_reg->host_to_ioa_db,
   LEGACY_SIS_IDBR);
 db_reg |= SIS_ENABLE_INTX;
 PCI_MEM_PUT32(softs, &softs->ioa_reg->host_to_ioa_db,
   LEGACY_SIS_IDBR, db_reg);
 if (pqisrc_sis_wait_for_db_bit_to_clear(softs,SIS_ENABLE_INTX)
   != PQI_STATUS_SUCCESS) {
  DBG_ERR("Failed to wait for enable intx db bit to clear\n");
 }
 DBG_FUNC("OUT\n");
}
