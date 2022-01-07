
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {TYPE_1__* ioa_reg; } ;
typedef TYPE_2__ pqisrc_softstate_t ;
struct TYPE_6__ {int host_to_ioa_db; } ;


 int DBG_FUNC (char*) ;
 int LEGACY_SIS_IDBR ;
 int PCI_MEM_GET32 (TYPE_2__*,int *,int ) ;
 int PCI_MEM_PUT32 (TYPE_2__*,int *,int ,int ) ;
 int SIS_ENABLE_INTX ;

void sis_disable_intx(pqisrc_softstate_t *softs)
{
 uint32_t db_reg;

 DBG_FUNC("IN\n");

 db_reg = PCI_MEM_GET32(softs, &softs->ioa_reg->host_to_ioa_db,
   LEGACY_SIS_IDBR);
 db_reg &= ~SIS_ENABLE_INTX;
 PCI_MEM_PUT32(softs, &softs->ioa_reg->host_to_ioa_db,
   LEGACY_SIS_IDBR, db_reg);

 DBG_FUNC("OUT\n");
}
