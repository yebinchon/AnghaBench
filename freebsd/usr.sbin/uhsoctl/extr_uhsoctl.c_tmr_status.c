
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctx {int fd; } ;


 int at_cmd_async (int ,char*) ;
 int watchdog_reset (struct ctx*,int) ;

__attribute__((used)) static void
tmr_status(int id, void *arg)
{
 struct ctx *ctx = arg;

 at_cmd_async(ctx->fd, "AT+CSQ\r\n");
 watchdog_reset(ctx, 10);
}
