
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TestContext {scalar_t__ nr_ringid; int nr_mode; } ;


 int NR_REG_ONE_NIC ;
 int port_register (struct TestContext*) ;

__attribute__((used)) static int
port_register_single_hw_pair(struct TestContext *ctx)
{
 ctx->nr_mode = NR_REG_ONE_NIC;
 ctx->nr_ringid = 0;
 return port_register(ctx);
}
