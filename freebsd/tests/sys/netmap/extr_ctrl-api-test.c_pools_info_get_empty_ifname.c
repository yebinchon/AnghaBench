
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TestContext {int ifname_ext; } ;


 scalar_t__ pools_info_get (struct TestContext*) ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static int
pools_info_get_empty_ifname(struct TestContext *ctx)
{
 strncpy(ctx->ifname_ext, "", sizeof(ctx->ifname_ext));
 return pools_info_get(ctx) != 0 ? 0 : -1;
}
