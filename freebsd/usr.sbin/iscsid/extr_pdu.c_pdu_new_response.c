
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdu {int pdu_connection; } ;


 struct pdu* pdu_new (int ) ;

struct pdu *
pdu_new_response(struct pdu *request)
{

 return (pdu_new(request->pdu_connection));
}
