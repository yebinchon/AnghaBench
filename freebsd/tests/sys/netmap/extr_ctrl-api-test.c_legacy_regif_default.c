
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TestContext {int dummy; } ;


 int NETMAP_API_NIOCREGIF ;
 int niocregif (struct TestContext*,int ) ;

__attribute__((used)) static int
legacy_regif_default(struct TestContext *ctx)
{
 return niocregif(ctx, NETMAP_API_NIOCREGIF);
}
