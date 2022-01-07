
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TestContext {int nr_mode; } ;


 int NR_REG_NIC_SW ;
 int vale_attach_detach (struct TestContext*) ;

__attribute__((used)) static int
vale_attach_detach_host_rings(struct TestContext *ctx)
{
 ctx->nr_mode = NR_REG_NIC_SW;
 return vale_attach_detach(ctx);
}
