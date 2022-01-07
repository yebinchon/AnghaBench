
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct snmp_pdu {scalar_t__ nbindings; scalar_t__ error_status; int error_index; } ;


 int assert (int ) ;

__attribute__((used)) static void
snmpget_fix_getbulk(struct snmp_pdu *pdu, uint32_t max_rep, uint32_t non_rep)
{
 assert(pdu != ((void*)0));

 if (pdu->nbindings < non_rep)
  pdu->error_status = pdu->nbindings;
 else
  pdu->error_status = non_rep;

 if (max_rep > 0)
  pdu->error_index = max_rep;
 else
  pdu->error_index = 1;
}
