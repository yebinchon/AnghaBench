
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct sfxge_txq {TYPE_1__* sc; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_5__ {scalar_t__ offset; int name; } ;
struct TYPE_4__ {int dev; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_STATS ;
 int ENOMEM ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,int ,int ,char*,int,int *,char*) ;
 int SYSCTL_ADD_ULONG (struct sysctl_ctx_list*,int ,int ,int ,int,unsigned long*,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 unsigned int nitems (TYPE_2__*) ;
 TYPE_2__* sfxge_tx_stats ;

__attribute__((used)) static int
sfxge_txq_stat_init(struct sfxge_txq *txq, struct sysctl_oid *txq_node)
{
 struct sysctl_ctx_list *ctx = device_get_sysctl_ctx(txq->sc->dev);
 struct sysctl_oid *stat_node;
 unsigned int id;

 stat_node = SYSCTL_ADD_NODE(ctx, SYSCTL_CHILDREN(txq_node), OID_AUTO,
        "stats", CTLFLAG_RD, ((void*)0),
        "Tx queue statistics");
 if (stat_node == ((void*)0))
  return (ENOMEM);

 for (id = 0; id < nitems(sfxge_tx_stats); id++) {
  SYSCTL_ADD_ULONG(
      ctx, SYSCTL_CHILDREN(stat_node), OID_AUTO,
      sfxge_tx_stats[id].name, CTLFLAG_RD | CTLFLAG_STATS,
      (unsigned long *)((caddr_t)txq + sfxge_tx_stats[id].offset),
      "");
 }

 return (0);
}
