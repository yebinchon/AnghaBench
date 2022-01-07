
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TestContext {int nr_mode; } ;


 scalar_t__ NETMAP_API ;
 int NR_REG_NIC_SW ;
 int niocregif (struct TestContext*,scalar_t__) ;

__attribute__((used)) static int
legacy_regif_future(struct TestContext *ctx)
{
 ctx->nr_mode = NR_REG_NIC_SW;



 return niocregif(ctx, NETMAP_API+2);
}
