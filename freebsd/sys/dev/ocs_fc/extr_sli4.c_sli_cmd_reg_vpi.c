
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int sli4_t ;
struct TYPE_6__ {int command; } ;
struct TYPE_8__ {int upd; int vfi; int vpi; int wwpn; int local_n_port_id; TYPE_1__ hdr; } ;
typedef TYPE_3__ sli4_cmd_reg_vpi_t ;
struct TYPE_9__ {TYPE_2__* domain; int indicator; int sli_wwpn; int fc_id; } ;
typedef TYPE_4__ ocs_sli_port_t ;
typedef int int32_t ;
struct TYPE_7__ {int indicator; } ;


 int SLI4_MBOX_COMMAND_REG_VPI ;
 int ocs_memcpy (int ,int *,int) ;
 int ocs_memset (void*,int ,size_t) ;

int32_t
sli_cmd_reg_vpi(sli4_t *sli4, void *buf, size_t size, ocs_sli_port_t *sport, uint8_t update)
{
 sli4_cmd_reg_vpi_t *reg_vpi = buf;

 if (!sli4 || !buf || !sport) {
  return 0;
 }

 ocs_memset(buf, 0, size);

 reg_vpi->hdr.command = SLI4_MBOX_COMMAND_REG_VPI;

 reg_vpi->local_n_port_id = sport->fc_id;
 reg_vpi->upd = update != 0;
 ocs_memcpy(reg_vpi->wwpn, &sport->sli_wwpn, sizeof(reg_vpi->wwpn));
 reg_vpi->vpi = sport->indicator;
 reg_vpi->vfi = sport->domain->indicator;

 return sizeof(sli4_cmd_reg_vpi_t);
}
