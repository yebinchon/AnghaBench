
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {TYPE_1__* extent; } ;
struct TYPE_9__ {TYPE_2__ config; int os; } ;
typedef TYPE_3__ sli4_t ;
typedef int int32_t ;
struct TYPE_7__ {int * base; int * use_map; } ;


 int SLI_RSRC_MAX ;
 int ocs_bitmap_free (int *) ;
 int ocs_free (int ,int *,int) ;
 int ocs_log_crit (int ,char*) ;
 scalar_t__ sli_fw_init (TYPE_3__*) ;
 scalar_t__ sli_get_config (TYPE_3__*) ;

int32_t
sli_reset(sli4_t *sli4)
{
 uint32_t i;

 if (sli_fw_init(sli4)) {
  ocs_log_crit(sli4->os, "FW initialization failed\n");
  return -1;
 }

 if (sli4->config.extent[0].base) {
  ocs_free(sli4->os, sli4->config.extent[0].base, SLI_RSRC_MAX * sizeof(uint32_t));
  sli4->config.extent[0].base = ((void*)0);
 }

 for (i = 0; i < SLI_RSRC_MAX; i++) {
  if (sli4->config.extent[i].use_map) {
   ocs_bitmap_free(sli4->config.extent[i].use_map);
   sli4->config.extent[i].use_map = ((void*)0);
  }
  sli4->config.extent[i].base = ((void*)0);
 }

 if (sli_get_config(sli4)) {
  return -1;
 }

 return 0;
}
