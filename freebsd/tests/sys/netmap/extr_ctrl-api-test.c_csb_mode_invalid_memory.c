
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nro_reqtype; } ;
struct nmreq_opt_csb {uintptr_t csb_atok; uintptr_t csb_ktoa; TYPE_1__ nro_opt; } ;
struct TestContext {int nr_flags; } ;
typedef int opt ;


 int NETMAP_REQ_OPT_CSB ;
 int NR_EXCLUSIVE ;
 int clear_options (struct TestContext*) ;
 int memset (struct nmreq_opt_csb*,int ,int) ;
 int port_register_hwall (struct TestContext*) ;
 int push_option (TYPE_1__*,struct TestContext*) ;

__attribute__((used)) static int
csb_mode_invalid_memory(struct TestContext *ctx)
{
 struct nmreq_opt_csb opt;
 int ret;

 memset(&opt, 0, sizeof(opt));
 opt.nro_opt.nro_reqtype = NETMAP_REQ_OPT_CSB;
 opt.csb_atok = (uintptr_t)0x10;
 opt.csb_ktoa = (uintptr_t)0x800;
 push_option(&opt.nro_opt, ctx);

 ctx->nr_flags = NR_EXCLUSIVE;
 ret = port_register_hwall(ctx);
 clear_options(ctx);

 return (ret < 0) ? 0 : -1;
}
