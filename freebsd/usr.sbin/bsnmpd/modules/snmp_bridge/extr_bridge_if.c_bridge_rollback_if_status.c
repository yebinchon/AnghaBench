
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
struct snmp_value {int var; } ;
struct snmp_context {TYPE_1__* scratch; } ;
struct bridge_if {int if_status; int bif_name; } ;
struct TYPE_2__ {int int1; } ;





 int SNMP_ERR_GENERR ;
 int SNMP_ERR_NOERROR ;
 int abort () ;
 int bridge_if_destroy (struct bridge_if*) ;
 struct bridge_if* bridge_if_index_get (int *,int ) ;
 int bridge_set_if_up (int ,int) ;

__attribute__((used)) static int
bridge_rollback_if_status(struct snmp_context *ctx,
 struct snmp_value *val, uint sub)
{
 struct bridge_if *bif;

 if ((bif = bridge_if_index_get(&val->var, sub)) == ((void*)0))
  return (SNMP_ERR_GENERR);

 switch (ctx->scratch->int1) {
  case 129:
   bridge_if_destroy(bif);
   return (SNMP_ERR_NOERROR);

  case 128:
   if (bif->if_status != ctx->scratch->int1)
    bridge_set_if_up(bif->bif_name, 0);
   bif->if_status = 128;
   return (SNMP_ERR_NOERROR);

  case 130:
   if (bif->if_status != ctx->scratch->int1)
    bridge_set_if_up(bif->bif_name, 1);
   bif->if_status = 130;
   return (SNMP_ERR_NOERROR);
 }

 abort();
}
