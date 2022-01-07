
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {int data; } ;
struct TYPE_8__ {TYPE_1__* extent; scalar_t__ has_extents; } ;
struct TYPE_10__ {int bmbx; int os; TYPE_3__ vpd; TYPE_2__ config; } ;
typedef TYPE_4__ sli4_t ;
typedef int int32_t ;
struct TYPE_7__ {int * use_map; int * base; } ;


 int SLI_RSRC_MAX ;
 int ocs_bitmap_free (int *) ;
 int ocs_dma_free (int ,int *) ;
 int ocs_free (int ,int *,int) ;
 int ocs_log_err (int ,char*) ;
 scalar_t__ sli_fw_term (TYPE_4__*) ;

int32_t
sli_teardown(sli4_t *sli4)
{
 uint32_t i;

 if (sli4->config.extent[0].base) {
  ocs_free(sli4->os, sli4->config.extent[0].base, SLI_RSRC_MAX * sizeof(uint32_t));
  sli4->config.extent[0].base = ((void*)0);
 }

 for (i = 0; i < SLI_RSRC_MAX; i++) {
  if (sli4->config.has_extents) {
                                             ;
  }

  sli4->config.extent[i].base = ((void*)0);

  ocs_bitmap_free(sli4->config.extent[i].use_map);
  sli4->config.extent[i].use_map = ((void*)0);
 }

 if (sli_fw_term(sli4)) {
  ocs_log_err(sli4->os, "FW deinitialization failed\n");
 }

 ocs_dma_free(sli4->os, &sli4->vpd.data);
 ocs_dma_free(sli4->os, &sli4->bmbx);

 return 0;
}
