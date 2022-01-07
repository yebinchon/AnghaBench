
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ctx {int fd; } ;
typedef int buf ;
struct TYPE_2__ {int (* func ) (void*,char*) ;int * cmd; } ;


 TYPE_1__* async_cmd ;
 int bzero (char*,int) ;
 int fprintf (int ,char*,char*) ;
 int readline (int ,char*,int) ;
 int stderr ;
 size_t strlen (int *) ;
 scalar_t__ strncmp (char*,int *,size_t) ;
 int stub1 (void*,char*) ;
 int watchdog_reset (struct ctx*,int) ;

__attribute__((used)) static int
at_async(struct ctx *ctx, void *arg)
{
 int n, i;
 size_t l;
 char buf[512];

 watchdog_reset(ctx, 15);

 bzero(buf, sizeof(buf));
 n = readline(ctx->fd, buf, sizeof(buf));
 if (n <= 0)
  return (n <= 0 ? -1 : 0);




 for (i = 0; async_cmd[i].cmd != ((void*)0); i++) {
  l = strlen(async_cmd[i].cmd);
  if (strncmp(buf, async_cmd[i].cmd, l) == 0) {
   async_cmd[i].func(arg, buf);
  }
 }
 return (0);
}
