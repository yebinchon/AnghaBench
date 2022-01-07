
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct dmar_domain {int dummy; } ;
struct dmar_ctx {int refs; int rid; struct dmar_domain* domain; } ;


 int M_DMAR_CTX ;
 int M_WAITOK ;
 int M_ZERO ;
 struct dmar_ctx* malloc (int,int ,int) ;

__attribute__((used)) static struct dmar_ctx *
dmar_ctx_alloc(struct dmar_domain *domain, uint16_t rid)
{
 struct dmar_ctx *ctx;

 ctx = malloc(sizeof(*ctx), M_DMAR_CTX, M_WAITOK | M_ZERO);
 ctx->domain = domain;
 ctx->rid = rid;
 ctx->refs = 1;
 return (ctx);
}
