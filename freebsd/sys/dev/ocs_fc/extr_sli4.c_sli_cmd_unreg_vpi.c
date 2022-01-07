
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef int sli4_t ;
struct TYPE_3__ {int command; } ;
struct TYPE_4__ {void* ii; int index; TYPE_1__ hdr; } ;
typedef TYPE_2__ sli4_cmd_unreg_vpi_t ;
typedef int int32_t ;


 int SLI4_MBOX_COMMAND_UNREG_VPI ;




 void* SLI4_UNREG_VPI_II_FCFI ;
 void* SLI4_UNREG_VPI_II_VFI ;
 void* SLI4_UNREG_VPI_II_VPI ;
 int UINT16_MAX ;
 int ocs_memset (void*,int ,size_t) ;

int32_t
sli_cmd_unreg_vpi(sli4_t *sli4, void *buf, size_t size, uint16_t indicator, uint32_t which)
{
 sli4_cmd_unreg_vpi_t *unreg_vpi = buf;

 if (!sli4 || !buf) {
  return 0;
 }

 ocs_memset(buf, 0, size);

 unreg_vpi->hdr.command = SLI4_MBOX_COMMAND_UNREG_VPI;
 unreg_vpi->index = indicator;
 switch (which) {
 case 128:
  unreg_vpi->ii = SLI4_UNREG_VPI_II_VPI;
  break;
 case 130:
  unreg_vpi->ii = SLI4_UNREG_VPI_II_VFI;
  break;
 case 129:
  unreg_vpi->ii = SLI4_UNREG_VPI_II_FCFI;
  break;
 case 131:
  unreg_vpi->index = UINT16_MAX;
  unreg_vpi->ii = SLI4_UNREG_VPI_II_FCFI;
  break;
 default:
  return 0;
 }

 return sizeof(sli4_cmd_unreg_vpi_t);
}
