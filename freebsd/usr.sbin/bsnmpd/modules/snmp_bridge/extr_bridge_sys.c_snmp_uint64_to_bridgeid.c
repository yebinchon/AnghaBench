
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_char ;
typedef int * bridge_id ;


 int SNMP_BRIDGE_ID_LEN ;

__attribute__((used)) static void
snmp_uint64_to_bridgeid(uint64_t id, bridge_id b_id)
{
 int i;
 u_char *o;

 o = (u_char *) &id;

 for (i = 0; i < SNMP_BRIDGE_ID_LEN; i++, o++)
  b_id[SNMP_BRIDGE_ID_LEN - i - 1] = *o;
}
