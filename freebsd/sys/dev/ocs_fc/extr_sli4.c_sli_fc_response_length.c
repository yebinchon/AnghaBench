
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int sli4_t ;
struct TYPE_2__ {int wqe_specific_1; } ;
typedef TYPE_1__ sli4_fc_wcqe_t ;



uint32_t
sli_fc_response_length(sli4_t *sli4, uint8_t *cqe)
{
 sli4_fc_wcqe_t *wcqe = (void *)cqe;

 return wcqe->wqe_specific_1;
}
