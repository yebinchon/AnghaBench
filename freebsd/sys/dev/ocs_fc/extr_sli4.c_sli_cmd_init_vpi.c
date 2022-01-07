
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint16_t ;
typedef int sli4_t ;
struct TYPE_3__ {int command; } ;
struct TYPE_4__ {void* vfi; void* vpi; TYPE_1__ hdr; } ;
typedef TYPE_2__ sli4_cmd_init_vpi_t ;
typedef int int32_t ;


 int SLI4_MBOX_COMMAND_INIT_VPI ;
 int ocs_memset (void*,int ,size_t) ;

int32_t
sli_cmd_init_vpi(sli4_t *sli4, void *buf, size_t size, uint16_t vpi, uint16_t vfi)
{
 sli4_cmd_init_vpi_t *init_vpi = buf;

 ocs_memset(buf, 0, size);

 init_vpi->hdr.command = SLI4_MBOX_COMMAND_INIT_VPI;
 init_vpi->vpi = vpi;
 init_vpi->vfi = vfi;

 return sizeof(sli4_cmd_init_vpi_t);
}
