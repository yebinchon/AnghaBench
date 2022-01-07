
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TestContext {int nr_mode; } ;


 int NETMAP_API ;
 int NR_REG_ALL_NIC ;
 int niocregif (struct TestContext*,int ) ;

__attribute__((used)) static int
legacy_regif_all_nic(struct TestContext *ctx)
{
 ctx->nr_mode = NR_REG_ALL_NIC;
 return niocregif(ctx, NETMAP_API);
}
