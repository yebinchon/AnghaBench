
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctx {int con_status; size_t con_net_type; int con_apn; int con_oper; int pdp_ctx; int fd; } ;


 int LOG_NOTICE ;
 int at_cmd_async (int ,char*,int ) ;
 int logger (int ,char*,int ,int ,...) ;
 int * network_access_type ;
 int sscanf (char const*,char*,int*) ;

__attribute__((used)) static void
at_async_owancall(void *arg, const char *resp)
{
 struct ctx *ctx = arg;
 int n, i;

 n = sscanf(resp, "_OWANCALL: %*d,%d", &i);
 if (n != 1)
  return;

 if (i == ctx->con_status)
  return;

 at_cmd_async(ctx->fd, "AT_OWANDATA=%d\r\n", ctx->pdp_ctx);

 ctx->con_status = i;
 if (ctx->con_status == 1) {
  logger(LOG_NOTICE, "Connected to \"%s\" (%s), %s",
      ctx->con_oper, ctx->con_apn,
      network_access_type[ctx->con_net_type]);
 }
 else {
  logger(LOG_NOTICE, "Disconnected from \"%s\" (%s)",
      ctx->con_oper, ctx->con_apn);
 }
}
