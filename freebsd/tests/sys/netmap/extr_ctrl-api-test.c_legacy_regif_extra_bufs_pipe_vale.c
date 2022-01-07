
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TestContext {int ifname_ext; } ;


 int legacy_regif_extra_bufs_pipe (struct TestContext*) ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static int
legacy_regif_extra_bufs_pipe_vale(struct TestContext *ctx)
{
 strncpy(ctx->ifname_ext, "valeX1:Y4", sizeof(ctx->ifname_ext));
 return legacy_regif_extra_bufs_pipe(ctx);
}
