
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct snmp_value {int var; } ;
struct bridge_port {int status; } ;
struct bridge_if {int dummy; } ;
typedef int int32_t ;


 int IFNAMSIZ ;


 int SNMP_ERR_COMMIT_FAILED ;
 int SNMP_ERR_GENERR ;
 int SNMP_ERR_NOERROR ;
 struct bridge_if* bridge_if_find_ifname (char*) ;
 int bridge_port_addm (struct bridge_port*,char*) ;
 int bridge_port_delm (struct bridge_port*,char*) ;
 struct bridge_port* bridge_port_find (int ,struct bridge_if*) ;
 scalar_t__ bridge_port_index_decode (int *,int ,char*,int *) ;
 int bridge_port_remove (struct bridge_port*,struct bridge_if*) ;

__attribute__((used)) static int
bridge_port_commit_status(struct snmp_value *val, uint sub)
{
 int32_t if_idx;
 char b_name[IFNAMSIZ];
 struct bridge_if *bif;
 struct bridge_port *bp;

 if (bridge_port_index_decode(&val->var, sub, b_name, &if_idx) < 0)
  return (SNMP_ERR_GENERR);

 if ((bif = bridge_if_find_ifname(b_name)) == ((void*)0) ||
     (bp = bridge_port_find(if_idx, bif)) == ((void*)0))
  return (SNMP_ERR_GENERR);

 switch (bp->status) {
  case 129:
   if (bridge_port_addm(bp, b_name) < 0)
    return (SNMP_ERR_COMMIT_FAILED);
   break;

  case 128:
   if (bridge_port_delm(bp, b_name) < 0)
    return (SNMP_ERR_COMMIT_FAILED);
   bridge_port_remove(bp, bif);
   break;
 }

 return (SNMP_ERR_NOERROR);
}
