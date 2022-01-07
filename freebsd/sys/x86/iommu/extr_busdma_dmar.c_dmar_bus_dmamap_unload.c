
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dmar_map_entries_tailq {int dummy; } ;
struct dmar_domain {int unload_task; TYPE_1__* dmar; struct dmar_map_entries_tailq unload_entries; } ;
struct dmar_ctx {int unloads; struct dmar_domain* domain; } ;
struct bus_dmamap_dmar {int map_entries; } ;
struct bus_dma_tag_dmar {struct dmar_ctx* ctx; } ;
typedef scalar_t__ bus_dmamap_t ;
typedef scalar_t__ bus_dma_tag_t ;
struct TYPE_2__ {int delayed_taskqueue; } ;


 int DMAR_DOMAIN_LOCK (struct dmar_domain*) ;
 int DMAR_DOMAIN_UNLOCK (struct dmar_domain*) ;
 int KASSERT (int ,char*) ;
 int TAILQ_CONCAT (struct dmar_map_entries_tailq*,int *,int ) ;
 int TAILQ_EMPTY (struct dmar_map_entries_tailq*) ;
 int TAILQ_INIT (struct dmar_map_entries_tailq*) ;
 int THREAD_NO_SLEEPING () ;
 int THREAD_SLEEPING_OK () ;
 int atomic_add_long (int *,int) ;
 int dmamap_link ;
 int dmar_domain_unload (struct dmar_domain*,struct dmar_map_entries_tailq*,int) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
dmar_bus_dmamap_unload(bus_dma_tag_t dmat, bus_dmamap_t map1)
{
 struct bus_dma_tag_dmar *tag;
 struct bus_dmamap_dmar *map;
 struct dmar_ctx *ctx;
 struct dmar_domain *domain;

 struct dmar_map_entries_tailq entries;


 tag = (struct bus_dma_tag_dmar *)dmat;
 map = (struct bus_dmamap_dmar *)map1;
 ctx = tag->ctx;
 domain = ctx->domain;
 atomic_add_long(&ctx->unloads, 1);
 TAILQ_INIT(&entries);
 DMAR_DOMAIN_LOCK(domain);
 TAILQ_CONCAT(&entries, &map->map_entries, dmamap_link);
 DMAR_DOMAIN_UNLOCK(domain);
 THREAD_NO_SLEEPING();
 dmar_domain_unload(domain, &entries, 0);
 THREAD_SLEEPING_OK();
 KASSERT(TAILQ_EMPTY(&entries), ("lazy dmar_ctx_unload %p", ctx));

}
