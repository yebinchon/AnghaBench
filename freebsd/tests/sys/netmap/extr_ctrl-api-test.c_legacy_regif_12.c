
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TestContext {int nr_mode; } ;


 scalar_t__ NETMAP_API_NIOCREGIF ;
 int NR_REG_ALL_NIC ;
 int niocregif (struct TestContext*,scalar_t__) ;

__attribute__((used)) static int
legacy_regif_12(struct TestContext *ctx)
{
 ctx->nr_mode = NR_REG_ALL_NIC;
 return niocregif(ctx, NETMAP_API_NIOCREGIF+1);
}
