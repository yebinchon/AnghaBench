
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdu {int pdu_data_len; } ;



__attribute__((used)) static size_t
pdu_padding(const struct pdu *pdu)
{

 if ((pdu->pdu_data_len % 4) != 0)
  return (4 - (pdu->pdu_data_len % 4));

 return (0);
}
