
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdu {struct connection* pdu_connection; int * pdu_bhs; } ;
struct connection {int dummy; } ;


 void* calloc (int,int) ;
 int log_err (int,char*) ;

struct pdu *
pdu_new(struct connection *conn)
{
 struct pdu *pdu;

 pdu = calloc(1, sizeof(*pdu));
 if (pdu == ((void*)0))
  log_err(1, "calloc");

 pdu->pdu_bhs = calloc(1, sizeof(*pdu->pdu_bhs));
 if (pdu->pdu_bhs == ((void*)0))
  log_err(1, "calloc");

 pdu->pdu_connection = conn;

 return (pdu);
}
