
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int sli4_t ;
struct TYPE_2__ {int status; int wqe_specific_2; } ;
typedef TYPE_1__ sli4_fc_wcqe_t ;
 int UINT32_MAX ;

uint32_t
sli_fc_ext_status(sli4_t *sli4, uint8_t *cqe)
{
 sli4_fc_wcqe_t *wcqe = (void *)cqe;
 uint32_t mask;

 switch (wcqe->status) {
 case 132:
  mask = UINT32_MAX;
  break;
 case 131:
 case 136:
  mask = 0xff;
  break;
 case 128:
 case 133:
 case 129:
 case 134:
 case 130:
  mask = UINT32_MAX;
  break;
 case 135:
  mask = UINT32_MAX;
  break;
 default:
  mask = 0;
 }

 return wcqe->wqe_specific_2 & mask;
}
