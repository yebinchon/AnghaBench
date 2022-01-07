
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pdu {TYPE_1__* pdu_bhs; } ;
struct TYPE_2__ {int bhs_total_ahs_len; } ;



__attribute__((used)) static int
pdu_ahs_length(const struct pdu *pdu)
{

 return (pdu->pdu_bhs->bhs_total_ahs_len * 4);
}
