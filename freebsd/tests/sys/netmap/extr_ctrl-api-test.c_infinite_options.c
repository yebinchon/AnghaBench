
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nmreq_option {int nro_reqtype; uintptr_t nro_next; } ;
struct TestContext {char* ifname_ext; } ;


 scalar_t__ EMSGSIZE ;
 int clear_options (struct TestContext*) ;
 scalar_t__ errno ;
 scalar_t__ port_register_hwall (struct TestContext*) ;
 int printf (char*,char*) ;
 int push_option (struct nmreq_option*,struct TestContext*) ;

__attribute__((used)) static int
infinite_options(struct TestContext *ctx)
{
 struct nmreq_option opt;

 printf("Testing infinite list of options on %s\n", ctx->ifname_ext);

 opt.nro_reqtype = 1234;
 push_option(&opt, ctx);
 opt.nro_next = (uintptr_t)&opt;
 if (port_register_hwall(ctx) >= 0)
  return -1;
 clear_options(ctx);
 return (errno == EMSGSIZE ? 0 : -1);
}
