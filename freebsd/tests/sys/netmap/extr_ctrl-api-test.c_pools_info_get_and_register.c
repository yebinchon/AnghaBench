
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TestContext {int nr_mem_id; int nr_mode; } ;


 int NR_REG_ONE_NIC ;
 int pools_info_get (struct TestContext*) ;
 int port_register (struct TestContext*) ;

__attribute__((used)) static int
pools_info_get_and_register(struct TestContext *ctx)
{
 int ret;



 ret = pools_info_get(ctx);
 if (ret != 0) {
  return ret;
 }

 ctx->nr_mode = NR_REG_ONE_NIC;
 ret = port_register(ctx);
 if (ret != 0) {
  return ret;
 }
 ctx->nr_mem_id = 1;


 return pools_info_get(ctx);
}
