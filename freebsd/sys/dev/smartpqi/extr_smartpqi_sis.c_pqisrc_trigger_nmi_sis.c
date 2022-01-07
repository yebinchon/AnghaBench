
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ioa_reg; } ;
typedef TYPE_2__ pqisrc_softstate_t ;
struct TYPE_5__ {int host_to_ioa_db; } ;


 int DBG_FUNC (char*) ;
 int LEGACY_SIS_IDBR ;
 int LE_32 (int ) ;
 int PCI_MEM_PUT32 (TYPE_2__*,int *,int ,int ) ;
 int TRIGGER_NMI_SIS ;

void pqisrc_trigger_nmi_sis(pqisrc_softstate_t *softs)
{

 DBG_FUNC("IN\n");

 PCI_MEM_PUT32(softs, &softs->ioa_reg->host_to_ioa_db,
   LEGACY_SIS_IDBR, LE_32(TRIGGER_NMI_SIS));
 DBG_FUNC("OUT\n");
}
