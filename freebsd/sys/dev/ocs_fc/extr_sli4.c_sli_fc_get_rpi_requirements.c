
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {scalar_t__ hdr_template_req; } ;
struct TYPE_5__ {TYPE_1__ config; } ;
typedef TYPE_2__ sli4_t ;


 int SLI4_FCOE_HDR_TEMPLATE_SIZE ;
 int SLI_ROUND_PAGE (int) ;

uint32_t
sli_fc_get_rpi_requirements(sli4_t *sli4, uint32_t n_rpi)
{
 uint32_t bytes = 0;


 if (sli4->config.hdr_template_req) {

  bytes = SLI_ROUND_PAGE(n_rpi * SLI4_FCOE_HDR_TEMPLATE_SIZE);
 }

 return bytes;
}
