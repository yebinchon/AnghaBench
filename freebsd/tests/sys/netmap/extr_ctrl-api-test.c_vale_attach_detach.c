
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TestContext {int dummy; } ;


 int vale_attach (struct TestContext*) ;
 int vale_detach (struct TestContext*) ;

__attribute__((used)) static int
vale_attach_detach(struct TestContext *ctx)
{
 int ret;

 if ((ret = vale_attach(ctx)) != 0) {
  return ret;
 }

 return vale_detach(ctx);
}
