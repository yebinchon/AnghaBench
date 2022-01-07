
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int sli4_t ;
struct TYPE_5__ {int command; } ;
struct TYPE_6__ {int ii; int index; TYPE_1__ hdr; } ;
typedef TYPE_2__ sli4_cmd_unreg_vfi_t ;
struct TYPE_7__ {int fcf_indicator; int indicator; } ;
typedef TYPE_3__ ocs_domain_t ;
typedef int int32_t ;


 int SLI4_MBOX_COMMAND_UNREG_VFI ;



 int SLI4_UNREG_VFI_II_FCFI ;
 int UINT16_MAX ;
 int ocs_memset (void*,int ,size_t) ;

int32_t
sli_cmd_unreg_vfi(sli4_t *sli4, void *buf, size_t size, ocs_domain_t *domain, uint32_t which)
{
 sli4_cmd_unreg_vfi_t *unreg_vfi = buf;

 if (!sli4 || !buf || !domain) {
  return 0;
 }

 ocs_memset(buf, 0, size);

 unreg_vfi->hdr.command = SLI4_MBOX_COMMAND_UNREG_VFI;
 switch (which) {
 case 129:
  unreg_vfi->index = domain->indicator;
  break;
 case 128:
  unreg_vfi->index = domain->fcf_indicator;
  break;
 case 130:
  unreg_vfi->index = UINT16_MAX;
  break;
 default:
  return 0;
 }

 if (129 != which) {
  unreg_vfi->ii = SLI4_UNREG_VFI_II_FCFI;
 }

 return sizeof(sli4_cmd_unreg_vfi_t);
}
