
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_idxlist {int dummy; } ;
struct index {int dummy; } ;
typedef int int32_t ;


 int STAILQ_INSERT_TAIL (struct snmp_idxlist*,struct index*,int ) ;
 int link ;

__attribute__((used)) static int32_t
snmp_index_insert(struct snmp_idxlist *headp, struct index *idx)
{
 if (headp == ((void*)0) || idx == ((void*)0))
  return (-1);

 STAILQ_INSERT_TAIL(headp, idx, link);
 return (1);
}
