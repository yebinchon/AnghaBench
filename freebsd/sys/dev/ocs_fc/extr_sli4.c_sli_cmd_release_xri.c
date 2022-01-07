
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int sli4_t ;
struct TYPE_3__ {int command; } ;
struct TYPE_4__ {int xri_count; TYPE_1__ hdr; } ;
typedef TYPE_2__ sli4_cmd_release_xri_t ;
typedef int int32_t ;


 int SLI4_MBOX_COMMAND_RELEASE_XRI ;
 int ocs_memset (void*,int ,size_t) ;

int32_t
sli_cmd_release_xri(sli4_t *sli4, void *buf, size_t size, uint8_t num_xri)
{
 sli4_cmd_release_xri_t *release_xri = buf;

 ocs_memset(buf, 0, size);

 release_xri->hdr.command = SLI4_MBOX_COMMAND_RELEASE_XRI;
 release_xri->xri_count = num_xri;

 return sizeof(sli4_cmd_release_xri_t);
}
