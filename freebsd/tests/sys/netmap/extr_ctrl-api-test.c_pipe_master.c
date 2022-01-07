
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TestContext {int nr_mode; int ifname_ext; } ;


 int NR_REG_ALL_NIC ;
 int NR_REG_NIC_SW ;
 int port_register (struct TestContext*) ;
 int printf (char*) ;
 int strncat (int ,char*,int) ;

__attribute__((used)) static int
pipe_master(struct TestContext *ctx)
{
 strncat(ctx->ifname_ext, "{pipeid1", sizeof(ctx->ifname_ext));
 ctx->nr_mode = NR_REG_NIC_SW;

 if (port_register(ctx) == 0) {
  printf("pipes should not accept NR_REG_NIC_SW\n");
  return -1;
 }
 ctx->nr_mode = NR_REG_ALL_NIC;

 return port_register(ctx);
}
