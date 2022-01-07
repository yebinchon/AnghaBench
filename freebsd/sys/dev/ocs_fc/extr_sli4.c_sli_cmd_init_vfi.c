
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef int sli4_t ;
struct TYPE_3__ {int command; } ;
struct TYPE_4__ {int vfi; int fcfi; int vpi; int vp; TYPE_1__ hdr; } ;
typedef TYPE_2__ sli4_cmd_init_vfi_t ;
typedef int int32_t ;


 int SLI4_MBOX_COMMAND_INIT_VFI ;
 int TRUE ;
 int ocs_memset (void*,int ,size_t) ;

int32_t
sli_cmd_init_vfi(sli4_t *sli4, void *buf, size_t size, uint16_t vfi,
  uint16_t fcfi, uint16_t vpi)
{
 sli4_cmd_init_vfi_t *init_vfi = buf;

 ocs_memset(buf, 0, size);

 init_vfi->hdr.command = SLI4_MBOX_COMMAND_INIT_VFI;

 init_vfi->vfi = vfi;
 init_vfi->fcfi = fcfi;





 if (0xffff != vpi) {
  init_vfi->vp = TRUE;
  init_vfi->vpi = vpi;
 }

 return sizeof(sli4_cmd_init_vfi_t);
}
