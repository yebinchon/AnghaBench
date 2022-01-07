
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TestContext {int nr_host_tx_rings; int nr_host_rx_rings; int nr_ringid; int nr_mode; } ;


 int NR_REG_ONE_SW ;
 int port_register (struct TestContext*) ;

__attribute__((used)) static int
port_register_single_host_pair(struct TestContext *ctx)
{
 ctx->nr_mode = NR_REG_ONE_SW;
 ctx->nr_host_tx_rings = 2;
 ctx->nr_host_rx_rings = 2;
 ctx->nr_ringid = 1;
 return port_register(ctx);
}
