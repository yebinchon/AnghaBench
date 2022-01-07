
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int phys; } ;
struct TYPE_6__ {TYPE_5__ bmbx; int os; } ;
typedef TYPE_1__ sli4_t ;
typedef int int32_t ;


 int OCS_DMASYNC_PREWRITE ;
 int SLI4_BMBX_DELAY_US ;
 int SLI4_BMBX_TIMEOUT_MSEC ;
 int SLI4_BMBX_WRITE_HI (int ) ;
 int SLI4_BMBX_WRITE_LO (int ) ;
 int SLI4_REG_BMBX ;
 int ocs_dma_sync (TYPE_5__*,int ) ;
 int ocs_log_crit (int ,char*) ;
 int sli_bmbx_wait (TYPE_1__*,int ) ;
 int sli_reg_write (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int32_t
sli_bmbx_write(sli4_t *sli4)
{
 uint32_t val = 0;


 ocs_dma_sync(&sli4->bmbx, OCS_DMASYNC_PREWRITE);
 val = SLI4_BMBX_WRITE_HI(sli4->bmbx.phys);
 sli_reg_write(sli4, SLI4_REG_BMBX, val);

 if (sli_bmbx_wait(sli4, SLI4_BMBX_DELAY_US)) {
  ocs_log_crit(sli4->os, "BMBX WRITE_HI failed\n");
  return -1;
 }
 val = SLI4_BMBX_WRITE_LO(sli4->bmbx.phys);
 sli_reg_write(sli4, SLI4_REG_BMBX, val);


 return sli_bmbx_wait(sli4, SLI4_BMBX_TIMEOUT_MSEC );
}
