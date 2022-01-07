
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
struct snmp_value {int var; } ;
struct snmp_context {TYPE_1__* scratch; } ;
struct bridge_port {scalar_t__ status; } ;
struct bridge_if {int dummy; } ;
typedef int int32_t ;
struct TYPE_2__ {scalar_t__ int1; } ;


 int IFNAMSIZ ;
 scalar_t__ RowStatus_destroy ;
 int SNMP_ERR_GENERR ;
 int SNMP_ERR_NOERROR ;
 struct bridge_if* bridge_if_find_ifname (char*) ;
 struct bridge_port* bridge_port_find (int ,struct bridge_if*) ;
 scalar_t__ bridge_port_index_decode (int *,int ,char*,int *) ;
 int bridge_port_remove (struct bridge_port*,struct bridge_if*) ;

__attribute__((used)) static int
bridge_port_rollback_status(struct snmp_context *ctx,
 struct snmp_value *val, uint sub)
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

 if (ctx->scratch->int1 == RowStatus_destroy)
  bridge_port_remove(bp, bif);
 else
  bp->status = ctx->scratch->int1;

 return (SNMP_ERR_NOERROR);
}
