
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctrl_online; } ;
typedef TYPE_1__ pqisrc_softstate_t ;
typedef int boolean_t ;


 int DBG_FUNC (char*) ;

boolean_t pqisrc_ctrl_offline(pqisrc_softstate_t *softs)
{
 DBG_FUNC("IN\n");

 DBG_FUNC("OUT\n");

 return !softs->ctrl_online;
}
