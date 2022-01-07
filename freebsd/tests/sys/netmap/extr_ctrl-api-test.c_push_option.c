
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nmreq_option {uintptr_t nro_next; } ;
struct TestContext {struct nmreq_option* nr_opt; } ;



__attribute__((used)) static void
push_option(struct nmreq_option *opt, struct TestContext *ctx)
{
 opt->nro_next = (uintptr_t)ctx->nr_opt;
 ctx->nr_opt = opt;
}
