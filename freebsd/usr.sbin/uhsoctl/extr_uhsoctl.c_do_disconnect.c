
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {int s_addr; } ;
struct ctx {int flags; int resolv_path; int ifnam; TYPE_2__ ip; int fd; int pdp_ctx; } ;


 int AF_INET ;
 int IPASSIGNED ;
 int at_cmd (struct ctx*,int *,int *,int *,char*,int ) ;
 int close (int ) ;
 int if_ifdown (int ) ;
 int ifaddr_del (int ,struct sockaddr*,struct sockaddr*) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int,int) ;
 int set_nameservers (struct ctx*,int ,int ) ;

__attribute__((used)) static void
do_disconnect(struct ctx *ctx)
{
 struct sockaddr_in sin, mask;


 at_cmd(ctx, ((void*)0), ((void*)0), ((void*)0), "AT_OWANCALL=%d,0,0\r\n",
     ctx->pdp_ctx);
 close(ctx->fd);


 if (ctx->flags & IPASSIGNED) {
  sin.sin_len = mask.sin_len = sizeof(struct sockaddr_in);
  memset(&mask.sin_addr.s_addr, 0xff,
      sizeof(mask.sin_addr.s_addr));
  sin.sin_family = mask.sin_family = AF_INET;
  memcpy(&sin.sin_addr.s_addr, &ctx->ip.s_addr,
      sizeof(sin.sin_addr.s_addr));
  ifaddr_del(ctx->ifnam, (struct sockaddr *)&sin,
      (struct sockaddr *)&mask);

  if_ifdown(ctx->ifnam);
  ctx->flags &= ~IPASSIGNED;
 }


 set_nameservers(ctx, ctx->resolv_path, 0);
}
