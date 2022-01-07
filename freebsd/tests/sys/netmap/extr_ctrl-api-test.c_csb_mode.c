
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nmreq_opt_csb {int dummy; } ;
struct TestContext {int dummy; } ;


 int clear_options (struct TestContext*) ;
 int port_register_hwall (struct TestContext*) ;
 int push_csb_option (struct TestContext*,struct nmreq_opt_csb*) ;

__attribute__((used)) static int
csb_mode(struct TestContext *ctx)
{
 struct nmreq_opt_csb opt;
 int ret;

 ret = push_csb_option(ctx, &opt);
 if (ret != 0) {
  return ret;
 }

 ret = port_register_hwall(ctx);
 clear_options(ctx);

 return ret;
}
