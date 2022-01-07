
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int sli4_t ;
struct TYPE_3__ {int command; } ;
struct TYPE_4__ {int preferred_d_id; int hard_alpa; int wwnn; int wwpn; TYPE_1__ hdr; } ;
typedef TYPE_2__ sli4_cmd_write_nvparms_t ;
typedef int int32_t ;


 int SLI4_MBOX_COMMAND_WRITE_NVPARMS ;
 int ocs_memcpy (int ,int *,int) ;
 int ocs_memset (void*,int ,size_t) ;

int32_t
sli_cmd_write_nvparms(sli4_t *sli4, void *buf, size_t size, uint8_t *wwpn, uint8_t *wwnn, uint8_t hard_alpa,
  uint32_t preferred_d_id)
{
 sli4_cmd_write_nvparms_t *write_nvparms = buf;

 ocs_memset(buf, 0, size);

 write_nvparms->hdr.command = SLI4_MBOX_COMMAND_WRITE_NVPARMS;
 ocs_memcpy(write_nvparms->wwpn, wwpn, 8);
 ocs_memcpy(write_nvparms->wwnn, wwnn, 8);
 write_nvparms->hard_alpa = hard_alpa;
 write_nvparms->preferred_d_id = preferred_d_id;

 return sizeof(sli4_cmd_write_nvparms_t);
}
