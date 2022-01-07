
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int nro_reqtype; } ;
struct nmreq_opt_csb {uintptr_t csb_atok; uintptr_t csb_ktoa; TYPE_1__ nro_opt; } ;
struct nm_csb_ktoa {int dummy; } ;
struct nm_csb_atok {int dummy; } ;
struct TestContext {scalar_t__ csb; int nr_flags; } ;


 int EXIT_FAILURE ;
 int NETMAP_REQ_OPT_CSB ;
 int NR_EXCLUSIVE ;
 int assert (int) ;
 int exit (int ) ;
 int free (scalar_t__) ;
 int memset (struct nmreq_opt_csb*,int ,int) ;
 int num_registered_rings (struct TestContext*) ;
 int port_info_get (struct TestContext*) ;
 int posix_memalign (scalar_t__*,int,size_t) ;
 int printf (char*) ;
 int push_option (TYPE_1__*,struct TestContext*) ;

__attribute__((used)) static int
push_csb_option(struct TestContext *ctx, struct nmreq_opt_csb *opt)
{
 size_t csb_size;
 int num_entries;
 int ret;

 ctx->nr_flags |= NR_EXCLUSIVE;


 ret = port_info_get(ctx);
 if (ret != 0) {
  return ret;
 }
 num_entries = num_registered_rings(ctx);

 csb_size = (sizeof(struct nm_csb_atok) + sizeof(struct nm_csb_ktoa)) *
            num_entries;
 assert(csb_size > 0);
 if (ctx->csb) {
  free(ctx->csb);
 }
 ret = posix_memalign(&ctx->csb, sizeof(struct nm_csb_atok), csb_size);
 if (ret != 0) {
  printf("Failed to allocate CSB memory\n");
  exit(EXIT_FAILURE);
 }

 memset(opt, 0, sizeof(*opt));
 opt->nro_opt.nro_reqtype = NETMAP_REQ_OPT_CSB;
 opt->csb_atok = (uintptr_t)ctx->csb;
 opt->csb_ktoa = (uintptr_t)(((uint8_t *)ctx->csb) +
                                    sizeof(struct nm_csb_atok) * num_entries);

 printf("Pushing option NETMAP_REQ_OPT_CSB\n");
 push_option(&opt->nro_opt, ctx);

 return 0;
}
