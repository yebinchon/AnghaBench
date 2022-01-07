
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TestContext {int nr_extra_bufs; int nr_mode; int ifname_ext; } ;


 int NETMAP_API_NIOCREGIF ;
 int NR_REG_ALL_NIC ;
 int niocregif (struct TestContext*,int ) ;
 int strncat (int ,char*,int) ;

__attribute__((used)) static int
legacy_regif_extra_bufs_pipe(struct TestContext *ctx)
{
 strncat(ctx->ifname_ext, "{pipeexbuf", sizeof(ctx->ifname_ext));
 ctx->nr_mode = NR_REG_ALL_NIC;
 ctx->nr_extra_bufs = 58;

 return niocregif(ctx, NETMAP_API_NIOCREGIF);
}
