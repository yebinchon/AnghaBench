
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctx {int con_net_type; int con_net_stat; int con_status; int pdp_ctx; int fd; int * con_oper; } ;


 int LOG_NOTICE ;
 int at_cmd_async (int ,char*,int ) ;
 int free (int *) ;
 int logger (int ,char*,int ,int ,...) ;
 int * network_access_type ;
 int * network_reg_status ;
 int sscanf (char const*,char*,char*,int*) ;
 scalar_t__ strcasecmp (char*,int *) ;
 int * strdup (char*) ;

__attribute__((used)) static void
at_async_cops(void *arg, const char *resp)
{
 struct ctx *ctx = arg;
 int n, at;
 char opr[64];

 n = sscanf(resp, "+COPS: %*d,%*d,\"%[^\"]\",%d",
     opr, &at);
 if (n != 2)
  return;

 if (ctx->con_oper != ((void*)0)) {
  if (ctx->con_net_type == at &&
      strcasecmp(opr, ctx->con_oper) == 0)
   return;
  free(ctx->con_oper);
 }

 ctx->con_oper = strdup(opr);
 ctx->con_net_type = at;

 if (ctx->con_net_stat == 1 || ctx->con_net_stat == 5) {
  logger(LOG_NOTICE, "%s to \"%s\" (%s)",
      network_reg_status[ctx->con_net_stat],
      ctx->con_oper, network_access_type[ctx->con_net_type]);
  if (ctx->con_status != 1) {
   at_cmd_async(ctx->fd, "AT_OWANCALL=%d,1,1\r\n",
       ctx->pdp_ctx);
  }
 }
 else {
  logger(LOG_NOTICE, "%s (%s)",
      network_reg_status[ctx->con_net_stat],
      network_access_type[ctx->con_net_type]);
 }
}
