
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ctrl_online; } ;
typedef TYPE_1__ pqisrc_softstate_t ;


 int DBG_FUNC (char*) ;
 int os_complete_outstanding_cmds_nodevice (TYPE_1__*) ;
 int pqisrc_take_devices_offline (TYPE_1__*) ;
 int pqisrc_trigger_nmi_sis (TYPE_1__*) ;

void pqisrc_take_ctrl_offline(pqisrc_softstate_t *softs)
{

 DBG_FUNC("IN\n");

 softs->ctrl_online = 0;
 pqisrc_trigger_nmi_sis(softs);
 os_complete_outstanding_cmds_nodevice(softs);
 pqisrc_take_devices_offline(softs);

 DBG_FUNC("OUT\n");
}
