
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ intr_type; } ;
typedef TYPE_1__ pqisrc_softstate_t ;


 int DBG_FUNC (char*,...) ;
 scalar_t__ INTR_TYPE_FIXED ;
 int register_legacy_intr (TYPE_1__*) ;
 int register_msix_intr (TYPE_1__*) ;

int os_setup_intr(pqisrc_softstate_t *softs)
{
 int error = 0;

 DBG_FUNC("IN\n");

 if (softs->intr_type == INTR_TYPE_FIXED) {
  error = register_legacy_intr(softs);
 }
 else {
  error = register_msix_intr(softs);
 }
 if (error) {
  DBG_FUNC("OUT failed error = %d\n", error);
  return error;
 }

 DBG_FUNC("OUT error = %d\n", error);

 return error;
}
