
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdu {struct pdu* pdu_bhs; struct pdu* pdu_data; } ;


 int free (struct pdu*) ;

void
pdu_delete(struct pdu *pdu)
{

 free(pdu->pdu_data);
 free(pdu->pdu_bhs);
 free(pdu);
}
