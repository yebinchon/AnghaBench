
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TestContext {int nr_flags; int nr_mode; } ;


 int NR_REG_ALL_NIC ;
 int NR_RX_RINGS_ONLY ;
 int port_register (struct TestContext*) ;

__attribute__((used)) static int
port_register_hwall_rx(struct TestContext *ctx)
{
 ctx->nr_mode = NR_REG_ALL_NIC;
 ctx->nr_flags |= NR_RX_RINGS_ONLY;
 return port_register(ctx);
}
