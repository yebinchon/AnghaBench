
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_6__ {int os; } ;
typedef TYPE_2__ sli4_t ;
typedef int sli4_resource_e ;
struct TYPE_5__ {int command; } ;
struct TYPE_7__ {int destination_n_port_id; int index; int ii; int dp; TYPE_1__ hdr; } ;
typedef TYPE_3__ sli4_cmd_unreg_rpi_t ;
typedef int int32_t ;


 int SLI4_MBOX_COMMAND_UNREG_RPI ;
 int SLI4_UNREG_RPI_II_FCFI ;
 int SLI4_UNREG_RPI_II_RPI ;
 int SLI4_UNREG_RPI_II_VFI ;
 int SLI4_UNREG_RPI_II_VPI ;




 int TRUE ;
 int UINT32_MAX ;
 int ocs_log_test (int ,char*,int) ;
 int ocs_memset (void*,int ,size_t) ;

int32_t
sli_cmd_unreg_rpi(sli4_t *sli4, void *buf, size_t size, uint16_t indicator, sli4_resource_e which,
  uint32_t fc_id)
{
 sli4_cmd_unreg_rpi_t *unreg_rpi = buf;
 uint8_t index_indicator = 0;

 if (!sli4 || !buf) {
  return 0;
 }

 ocs_memset(buf, 0, size);

 unreg_rpi->hdr.command = SLI4_MBOX_COMMAND_UNREG_RPI;

 switch (which) {
 case 130:
  index_indicator = SLI4_UNREG_RPI_II_RPI;
  if (fc_id != UINT32_MAX) {
   unreg_rpi->dp = TRUE;
   unreg_rpi->destination_n_port_id = fc_id & 0x00ffffff;
  }
  break;
 case 128:
  index_indicator = SLI4_UNREG_RPI_II_VPI;
  break;
 case 129:
  index_indicator = SLI4_UNREG_RPI_II_VFI;
  break;
 case 131:
  index_indicator = SLI4_UNREG_RPI_II_FCFI;
  break;
 default:
  ocs_log_test(sli4->os, "unknown type %#x\n", which);
  return 0;
 }

 unreg_rpi->ii = index_indicator;
 unreg_rpi->index = indicator;

 return sizeof(sli4_cmd_unreg_rpi_t);
}
