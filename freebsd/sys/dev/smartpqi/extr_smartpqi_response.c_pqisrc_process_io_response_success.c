
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rcb_t ;
typedef int pqisrc_softstate_t ;


 int DBG_FUNC (char*) ;
 int os_io_response_success (int *) ;

void pqisrc_process_io_response_success(pqisrc_softstate_t *softs,
  rcb_t *rcb)
{
 DBG_FUNC("IN");

 os_io_response_success(rcb);

 DBG_FUNC("OUT");
}
