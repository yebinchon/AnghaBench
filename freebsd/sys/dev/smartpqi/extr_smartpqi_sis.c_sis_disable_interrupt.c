
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int intr_type; } ;
typedef TYPE_1__ pqisrc_softstate_t ;


 int DBG_ERR (char*) ;
 int DBG_FUNC (char*) ;



 int pqisrc_configure_legacy_intx (TYPE_1__*,int) ;
 int sis_disable_intx (TYPE_1__*) ;
 int sis_disable_msix (TYPE_1__*) ;

void sis_disable_interrupt(pqisrc_softstate_t *softs)
{
 DBG_FUNC("IN");

 switch(softs->intr_type) {
  case 130:
   pqisrc_configure_legacy_intx(softs,0);
   sis_disable_intx(softs);
   break;
  case 129:
  case 128:
   sis_disable_msix(softs);
   break;
  default:
   DBG_ERR("Inerrupt mode none!\n");
   break;
 }

 DBG_FUNC("OUT");
}
