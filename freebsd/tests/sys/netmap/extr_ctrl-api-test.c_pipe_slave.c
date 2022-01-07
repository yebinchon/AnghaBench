
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TestContext {int nr_mode; int ifname_ext; } ;


 int NR_REG_ALL_NIC ;
 int port_register (struct TestContext*) ;
 int strncat (int ,char*,int) ;

__attribute__((used)) static int
pipe_slave(struct TestContext *ctx)
{
 strncat(ctx->ifname_ext, "}pipeid2", sizeof(ctx->ifname_ext));
 ctx->nr_mode = NR_REG_ALL_NIC;

 return port_register(ctx);
}
