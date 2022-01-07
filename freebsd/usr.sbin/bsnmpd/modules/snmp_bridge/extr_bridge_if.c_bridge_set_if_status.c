
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
struct TYPE_3__ {int integer; } ;
struct snmp_value {int var; TYPE_1__ v; } ;
struct snmp_context {TYPE_2__* scratch; } ;
struct bridge_if {int if_status; int bif_name; } ;
struct TYPE_4__ {int int1; } ;


 int IFNAMSIZ ;






 int SNMP_ERR_BADVALUE ;
 int SNMP_ERR_GENERR ;
 int SNMP_ERR_INCONS_VALUE ;
 int SNMP_ERR_NOERROR ;
 int SNMP_ERR_NOSUCHNAME ;
 int bridge_if_create (char*,int) ;
 struct bridge_if* bridge_if_index_get (int *,int ) ;
 int * bridge_name_index_get (int *,int ,char*) ;
 int bridge_set_if_up (int ,int) ;

__attribute__((used)) static int
bridge_set_if_status(struct snmp_context *ctx,
 struct snmp_value *val, uint sub)
{
 struct bridge_if *bif;
 char bif_name[IFNAMSIZ];

 bif = bridge_if_index_get(&val->var, sub);

 switch (val->v.integer) {
     case 133:
  if (bif == ((void*)0))
      return (SNMP_ERR_INCONS_VALUE);

  ctx->scratch->int1 = bif->if_status;

  switch (bif->if_status) {
      case 133:
   return (SNMP_ERR_NOERROR);
      case 129:
   if (bridge_set_if_up(bif->bif_name, 1) < 0)
       return (SNMP_ERR_GENERR);
   return (SNMP_ERR_NOERROR);
      default:
   break;
  }
  return (SNMP_ERR_INCONS_VALUE);

     case 129:
  if (bif == ((void*)0))
      return (SNMP_ERR_INCONS_VALUE);

  ctx->scratch->int1 = bif->if_status;

  switch (bif->if_status) {
      case 133:
   if (bridge_set_if_up(bif->bif_name, 1) < 0)
       return (SNMP_ERR_GENERR);
   return (SNMP_ERR_NOERROR);
      case 129:
   return (SNMP_ERR_NOERROR);
      default:
   break;
  }
  return (SNMP_ERR_INCONS_VALUE);

     case 128:
  return (SNMP_ERR_INCONS_VALUE);

     case 132:
  if (bif != ((void*)0))
      return (SNMP_ERR_INCONS_VALUE);

  ctx->scratch->int1 = 130;

  if (bridge_name_index_get(&val->var, sub, bif_name) == ((void*)0))
      return (SNMP_ERR_BADVALUE);
  if (bridge_if_create(bif_name, 1) < 0)
      return (SNMP_ERR_GENERR);
  return (SNMP_ERR_NOERROR);

     case 131:
  if (bif != ((void*)0))
      return (SNMP_ERR_INCONS_VALUE);

  if (bridge_name_index_get(&val->var, sub, bif_name) == ((void*)0))
      return (SNMP_ERR_BADVALUE);

  ctx->scratch->int1 = 130;

  if (bridge_if_create(bif_name, 0) < 0)
      return (SNMP_ERR_GENERR);
  return (SNMP_ERR_NOERROR);

     case 130:
  if (bif == ((void*)0))
      return (SNMP_ERR_NOSUCHNAME);

  ctx->scratch->int1 = bif->if_status;
  bif->if_status = 130;
 }

 return (SNMP_ERR_NOERROR);
}
