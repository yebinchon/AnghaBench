
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TestContext {int ifname_ext; } ;


 int pools_info_get (struct TestContext*) ;
 int strncat (int ,char*,int) ;

__attribute__((used)) static int
pipe_pools_info_get(struct TestContext *ctx)
{
 strncat(ctx->ifname_ext, "{xid", sizeof(ctx->ifname_ext));

 return pools_info_get(ctx);
}
