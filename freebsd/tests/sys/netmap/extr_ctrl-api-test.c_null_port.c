
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TestContext {int nr_mem_id; int nr_tx_rings; int nr_rx_rings; int nr_tx_slots; int nr_rx_slots; int nr_mode; } ;


 int NR_REG_NULL ;
 int port_register (struct TestContext*) ;

__attribute__((used)) static int
null_port(struct TestContext *ctx)
{
 int ret;

 ctx->nr_mem_id = 1;
 ctx->nr_mode = NR_REG_NULL;
 ctx->nr_tx_rings = 10;
 ctx->nr_rx_rings = 5;
 ctx->nr_tx_slots = 256;
 ctx->nr_rx_slots = 100;
 ret = port_register(ctx);
 if (ret != 0) {
  return ret;
 }
 return 0;
}
