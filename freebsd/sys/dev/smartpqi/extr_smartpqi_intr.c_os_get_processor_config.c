
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_cpus_online; } ;
typedef TYPE_1__ pqisrc_softstate_t ;


 int DBG_FUNC (char*) ;
 int PQI_STATUS_SUCCESS ;
 int mp_ncpus ;

int os_get_processor_config(pqisrc_softstate_t *softs)
{
 DBG_FUNC("IN\n");
 softs->num_cpus_online = mp_ncpus;
 DBG_FUNC("OUT\n");

 return PQI_STATUS_SUCCESS;
}
