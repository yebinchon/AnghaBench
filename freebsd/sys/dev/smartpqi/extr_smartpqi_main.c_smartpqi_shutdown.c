
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqisrc_softstate {int dummy; } ;


 int DBG_ERR (char*,int) ;
 int DBG_FUNC (char*) ;
 int PQISRC_SHUTDOWN ;
 int PQI_STATUS_SUCCESS ;
 int pqisrc_flush_cache (struct pqisrc_softstate*,int ) ;

int
smartpqi_shutdown(void *arg)
{
 struct pqisrc_softstate *softs = ((void*)0);
 int rval = 0;

 DBG_FUNC("IN\n");

 softs = (struct pqisrc_softstate *)arg;

 rval = pqisrc_flush_cache(softs, PQISRC_SHUTDOWN);
 if (rval != PQI_STATUS_SUCCESS) {
  DBG_ERR("Unable to flush adapter cache! rval = %d", rval);
 }

 DBG_FUNC("OUT\n");

 return rval;
}
