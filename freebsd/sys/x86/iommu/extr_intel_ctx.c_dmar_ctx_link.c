
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_domain {scalar_t__ refs; scalar_t__ ctx_cnt; int contexts; int dmar; } ;
struct dmar_ctx {struct dmar_domain* domain; } ;


 int DMAR_ASSERT_LOCKED (int ) ;
 int KASSERT (int,char*) ;
 int LIST_INSERT_HEAD (int *,struct dmar_ctx*,int ) ;
 int link ;

__attribute__((used)) static void
dmar_ctx_link(struct dmar_ctx *ctx)
{
 struct dmar_domain *domain;

 domain = ctx->domain;
 DMAR_ASSERT_LOCKED(domain->dmar);
 KASSERT(domain->refs >= domain->ctx_cnt,
     ("dom %p ref underflow %d %d", domain, domain->refs,
     domain->ctx_cnt));
 domain->refs++;
 domain->ctx_cnt++;
 LIST_INSERT_HEAD(&domain->contexts, ctx, link);
}
