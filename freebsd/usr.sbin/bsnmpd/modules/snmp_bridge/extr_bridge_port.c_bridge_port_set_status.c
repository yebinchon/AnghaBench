
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
struct TYPE_3__ {int integer; } ;
struct snmp_value {TYPE_1__ v; int var; } ;
struct snmp_context {TYPE_2__* scratch; } ;
struct mibif {int dummy; } ;
struct bridge_port {int status; int span_enable; } ;
struct bridge_if {int dummy; } ;
typedef int int32_t ;
struct TYPE_4__ {int int1; } ;


 int IFNAMSIZ ;






 int SNMP_ERR_GENERR ;
 int SNMP_ERR_INCONS_VALUE ;
 int SNMP_ERR_NOERROR ;
 struct bridge_if* bridge_if_find_ifname (char*) ;
 struct bridge_port* bridge_new_port (struct mibif*,struct bridge_if*) ;
 struct bridge_port* bridge_port_find (int ,struct bridge_if*) ;
 scalar_t__ bridge_port_index_decode (int *,int ,char*,int *) ;
 struct mibif* mib_find_if (int ) ;

__attribute__((used)) static int
bridge_port_set_status(struct snmp_context *ctx,
 struct snmp_value *val, uint sub)
{
 int32_t if_idx;
 char b_name[IFNAMSIZ];
 struct bridge_if *bif;
 struct bridge_port *bp;
 struct mibif *mif;

 if (bridge_port_index_decode(&val->var, sub, b_name, &if_idx) < 0)
  return (SNMP_ERR_INCONS_VALUE);

 if ((bif = bridge_if_find_ifname(b_name)) == ((void*)0) ||
     (mif = mib_find_if(if_idx)) == ((void*)0))
  return (SNMP_ERR_INCONS_VALUE);

 bp = bridge_port_find(if_idx, bif);

 switch (val->v.integer) {
     case 133:
  if (bp == ((void*)0))
      return (SNMP_ERR_INCONS_VALUE);

  if (bp->span_enable == 0)
      return (SNMP_ERR_INCONS_VALUE);

  ctx->scratch->int1 = bp->status;
  bp->status = 133;
  break;

     case 129:
  if (bp == ((void*)0) || bp->span_enable == 0 ||
      bp->status == 133)
   return (SNMP_ERR_INCONS_VALUE);

  ctx->scratch->int1 = bp->status;
  bp->status = 129;

     case 128:

     case 132:
  return (SNMP_ERR_INCONS_VALUE);

     case 131:
  if (bp != ((void*)0))
      return (SNMP_ERR_INCONS_VALUE);

  if ((bp = bridge_new_port(mif, bif)) == ((void*)0))
   return (SNMP_ERR_GENERR);

  ctx->scratch->int1 = 130;
  bp->status = 128;
  break;

     case 130:
  if (bp == ((void*)0))
      return (SNMP_ERR_INCONS_VALUE);

  ctx->scratch->int1 = bp->status;
  bp->status = 130;
  break;
 }

 return (SNMP_ERR_NOERROR);
}
