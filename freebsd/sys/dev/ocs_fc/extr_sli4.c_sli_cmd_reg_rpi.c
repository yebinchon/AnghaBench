
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int uint32_t ;
typedef void* uint16_t ;
typedef int sli4_t ;
struct TYPE_9__ {int buffer_address_high; int buffer_address_low; } ;
struct TYPE_10__ {TYPE_2__ data; } ;
struct TYPE_11__ {TYPE_3__ u; int buffer_length; int bde_type; } ;
struct TYPE_8__ {int command; } ;
struct TYPE_12__ {void* vpi; TYPE_4__ bde_64; void* etow; void* upd; int remote_n_port_id; void* rpi; TYPE_1__ hdr; } ;
typedef TYPE_5__ sli4_cmd_reg_rpi_t ;
struct TYPE_13__ {int phys; } ;
typedef TYPE_6__ ocs_dma_t ;
typedef int int32_t ;


 int SLI4_BDE_TYPE_BDE_64 ;
 int SLI4_MBOX_COMMAND_REG_RPI ;
 int SLI4_REG_RPI_BUF_LEN ;
 int ocs_addr32_hi (int ) ;
 int ocs_addr32_lo (int ) ;
 int ocs_memset (void*,int ,size_t) ;

int32_t
sli_cmd_reg_rpi(sli4_t *sli4, void *buf, size_t size, uint32_t nport_id, uint16_t rpi,
   uint16_t vpi, ocs_dma_t *dma, uint8_t update, uint8_t enable_t10_pi)
{
 sli4_cmd_reg_rpi_t *reg_rpi = buf;

 ocs_memset(buf, 0, size);

 reg_rpi->hdr.command = SLI4_MBOX_COMMAND_REG_RPI;

 reg_rpi->rpi = rpi;
 reg_rpi->remote_n_port_id = nport_id;
 reg_rpi->upd = update;
 reg_rpi->etow = enable_t10_pi;

 reg_rpi->bde_64.bde_type = SLI4_BDE_TYPE_BDE_64;
 reg_rpi->bde_64.buffer_length = SLI4_REG_RPI_BUF_LEN;
 reg_rpi->bde_64.u.data.buffer_address_low = ocs_addr32_lo(dma->phys);
 reg_rpi->bde_64.u.data.buffer_address_high = ocs_addr32_hi(dma->phys);

 reg_rpi->vpi = vpi;

 return sizeof(sli4_cmd_reg_rpi_t);
}
