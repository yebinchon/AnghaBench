
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sge_wrq {int eq; } ;
struct TYPE_5__ {int cntxt_id; } ;
struct TYPE_6__ {TYPE_2__ fwq; } ;
struct adapter {int ctx; TYPE_3__ sge; TYPE_1__** port; int dev; } ;
typedef int name ;
struct TYPE_4__ {int tx_chan; } ;


 int CTLFLAG_RD ;
 int CTRL_EQ_QSIZE ;
 int EQ_CTRL ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (int *,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int alloc_wrq (struct adapter*,int *,struct sge_wrq*,struct sysctl_oid*) ;
 char* device_get_nameunit (int ) ;
 int init_eq (struct adapter*,int *,int ,int ,int ,int ,char*) ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static int
alloc_ctrlq(struct adapter *sc, struct sge_wrq *ctrlq, int idx,
    struct sysctl_oid *oid)
{
 int rc;
 char name[16];
 struct sysctl_oid_list *children;

 snprintf(name, sizeof(name), "%s ctrlq%d", device_get_nameunit(sc->dev),
     idx);
 init_eq(sc, &ctrlq->eq, EQ_CTRL, CTRL_EQ_QSIZE, sc->port[idx]->tx_chan,
     sc->sge.fwq.cntxt_id, name);

 children = SYSCTL_CHILDREN(oid);
 snprintf(name, sizeof(name), "%d", idx);
 oid = SYSCTL_ADD_NODE(&sc->ctx, children, OID_AUTO, name, CTLFLAG_RD,
     ((void*)0), "ctrl queue");
 rc = alloc_wrq(sc, ((void*)0), ctrlq, oid);

 return (rc);
}
