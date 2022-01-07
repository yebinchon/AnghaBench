
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_20__ {int virt; } ;
struct TYPE_19__ {TYPE_2__* extent; } ;
struct TYPE_21__ {TYPE_4__ bmbx; TYPE_3__ config; } ;
typedef TYPE_5__ sli4_t ;
struct TYPE_17__ {TYPE_5__ sli; } ;
struct TYPE_22__ {TYPE_1__ hw; } ;
typedef TYPE_6__ ocs_t ;
struct TYPE_23__ {int * virt; } ;
typedef TYPE_7__ ocs_dma_t ;
struct TYPE_18__ {int* base; } ;


 int SLI4_BMBX_SIZE ;
 int SLI4_READ_SPARM64_WWNN_OFFSET ;
 int SLI4_READ_SPARM64_WWPN_OFFSET ;
 size_t SLI_RSRC_FCOE_VPI ;
 scalar_t__ ocs_dma_alloc (TYPE_6__*,TYPE_7__*,int,int) ;
 int ocs_dma_free (TYPE_6__*,TYPE_7__*) ;
 int ocs_log_err (TYPE_6__*,char*) ;
 int ocs_memcpy (int *,int *,int) ;
 scalar_t__ sli_bmbx_command (TYPE_5__*) ;
 scalar_t__ sli_cmd_read_sparm64 (TYPE_5__*,int ,int ,TYPE_7__*,int) ;

uint32_t
ocs_hw_get_def_wwn(ocs_t *ocs, uint32_t chan, uint64_t *wwpn, uint64_t *wwnn)
{
 sli4_t *sli4 = &ocs->hw.sli;
 ocs_dma_t dma;
 uint8_t *payload = ((void*)0);

 int indicator = sli4->config.extent[SLI_RSRC_FCOE_VPI].base[0] + chan;


 if (ocs_dma_alloc(ocs, &dma, 112, 4)) {
  ocs_log_err(ocs, "Failed to allocate DMA memory\n");
  return 1;
 }

 if (0 == sli_cmd_read_sparm64(sli4, sli4->bmbx.virt, SLI4_BMBX_SIZE,
    &dma, indicator)) {
  ocs_log_err(ocs, "READ_SPARM64 allocation failure\n");
  ocs_dma_free(ocs, &dma);
  return 1;
 }

 if (sli_bmbx_command(sli4)) {
  ocs_log_err(ocs, "READ_SPARM64 command failure\n");
  ocs_dma_free(ocs, &dma);
  return 1;
 }

 payload = dma.virt;
 ocs_memcpy(wwpn, payload + SLI4_READ_SPARM64_WWPN_OFFSET, sizeof(*wwpn));
 ocs_memcpy(wwnn, payload + SLI4_READ_SPARM64_WWNN_OFFSET, sizeof(*wwnn));
 ocs_dma_free(ocs, &dma);
 return 0;
}
