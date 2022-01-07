
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snmp_context {TYPE_1__* scratch; } ;
struct TYPE_2__ {int int1; int * ptr1; } ;


 int IFNAMSIZ ;
 int * malloc (int ) ;
 int strlen (char const*) ;
 int strncpy (int *,char const*,int ) ;

__attribute__((used)) static int
bridge_default_name_save(struct snmp_context *ctx, const char *bridge_default)
{
 if ((ctx->scratch->int1 = strlen(bridge_default)) >= IFNAMSIZ)
  return (-1);

 if ((ctx->scratch->ptr1 = malloc(IFNAMSIZ)) == ((void*)0))
  return (-1);

 strncpy(ctx->scratch->ptr1, bridge_default, ctx->scratch->int1);
 return (0);
}
