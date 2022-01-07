
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nmreq_option {int nro_reqtype; int nro_status; } ;
struct TestContext {char* ifname_ext; } ;
typedef int opt ;


 int EOPNOTSUPP ;
 int checkoption (struct nmreq_option*,struct nmreq_option*) ;
 int clear_options (struct TestContext*) ;
 int memset (struct nmreq_option*,int ,int) ;
 scalar_t__ port_register_hwall (struct TestContext*) ;
 int printf (char*,char*) ;
 int push_option (struct nmreq_option*,struct TestContext*) ;

__attribute__((used)) static int
unsupported_option(struct TestContext *ctx)
{
 struct nmreq_option opt, save;

 printf("Testing unsupported option on %s\n", ctx->ifname_ext);

 memset(&opt, 0, sizeof(opt));
 opt.nro_reqtype = 1234;
 push_option(&opt, ctx);
 save = opt;

 if (port_register_hwall(ctx) >= 0)
  return -1;

 clear_options(ctx);
 save.nro_status = EOPNOTSUPP;
 return checkoption(&opt, &save);
}
