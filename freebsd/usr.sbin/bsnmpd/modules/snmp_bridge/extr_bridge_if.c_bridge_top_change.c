
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_value {int dummy; } ;
struct bridge_if {int dummy; } ;


 int * bridge_basename_var (struct bridge_if*,struct snmp_value*) ;
 struct bridge_if* bridge_get_default () ;
 int oid_TopologyChange ;
 int oid_begemotNewRoot ;
 int snmp_send_trap (int *,struct snmp_value*,...) ;

__attribute__((used)) static void
bridge_top_change(struct bridge_if *bif)
{
 struct snmp_value bif_idx;

 if (bridge_get_default() == bif)
  snmp_send_trap(&oid_TopologyChange,
      (struct snmp_value *) ((void*)0));

 if (bridge_basename_var(bif, &bif_idx) == ((void*)0))
  return;

 snmp_send_trap(&oid_begemotNewRoot,
     &bif_idx, (struct snmp_value *) ((void*)0));
}
