
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctx {int con_net_stat; int fd; } ;


 int at_cmd_async (int ,char*) ;
 int sscanf (char const*,char*,int*) ;
 int timers ;
 int tmr_add (int *,int,int,int ,struct ctx*) ;
 int tmr_creg ;

__attribute__((used)) static void
at_async_creg(void *arg, const char *resp)
{
 struct ctx *ctx = arg;
 int n, reg;

 n = sscanf(resp, "+CREG: %*d,%d", &reg);
 if (n != 1) {
  n = sscanf(resp, "+CREG: %d", &reg);
  if (n != 1)
   return;
 }

 if (ctx->con_net_stat != 1 && ctx->con_net_stat != 5) {
  tmr_add(&timers, 1, 1, tmr_creg, ctx);
 }
 else {
  tmr_add(&timers, 1, 30, tmr_creg, ctx);
 }

 if (ctx->con_net_stat == reg)
  return;

 ctx->con_net_stat = reg;
 at_cmd_async(ctx->fd, "AT+COPS?\r\n");
}
