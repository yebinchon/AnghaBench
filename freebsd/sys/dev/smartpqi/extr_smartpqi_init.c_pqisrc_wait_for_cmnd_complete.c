
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ num_elem; } ;
struct TYPE_5__ {scalar_t__ max_outstanding_io; TYPE_1__ taglist; } ;
typedef TYPE_2__ pqisrc_softstate_t ;


 int COND_WAIT (int,int) ;
 int DBG_ERR (char*,scalar_t__) ;
 int PQI_CMND_COMPLETE_TMO ;
 int PQI_STATUS_SUCCESS ;
 int PQI_STATUS_TIMEOUT ;

int pqisrc_wait_for_cmnd_complete(pqisrc_softstate_t *softs)
{
 int ret = PQI_STATUS_SUCCESS;
 int tmo = PQI_CMND_COMPLETE_TMO;

 COND_WAIT((softs->taglist.num_elem == softs->max_outstanding_io), tmo);
 if (!tmo) {
  DBG_ERR("Pending commands %x!!!",softs->taglist.num_elem);
  ret = PQI_STATUS_TIMEOUT;
 }
 return ret;
}
