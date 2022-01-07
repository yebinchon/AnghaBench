
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sge_iq {int dummy; } ;
struct TYPE_3__ {struct sge_iq fwq; } ;
struct adapter {int flags; int intr_count; int ctx; int dev; TYPE_2__** port; TYPE_1__ sge; } ;
struct TYPE_4__ {int * vi; } ;


 int CTLFLAG_RD ;
 int FW_IQ_QSIZE ;
 int IS_VF ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (int *,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int add_iq_sysctls (int *,struct sysctl_oid*,struct sge_iq*) ;
 int alloc_iq_fl (int *,struct sge_iq*,int *,int,int) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_printf (int ,char*,int) ;
 int init_iq (struct sge_iq*,struct adapter*,int ,int ,int ) ;

__attribute__((used)) static int
alloc_fwq(struct adapter *sc)
{
 int rc, intr_idx;
 struct sge_iq *fwq = &sc->sge.fwq;
 struct sysctl_oid *oid = device_get_sysctl_tree(sc->dev);
 struct sysctl_oid_list *children = SYSCTL_CHILDREN(oid);

 init_iq(fwq, sc, 0, 0, FW_IQ_QSIZE);
 if (sc->flags & IS_VF)
  intr_idx = 0;
 else
  intr_idx = sc->intr_count > 1 ? 1 : 0;
 rc = alloc_iq_fl(&sc->port[0]->vi[0], fwq, ((void*)0), intr_idx, -1);
 if (rc != 0) {
  device_printf(sc->dev,
      "failed to create firmware event queue: %d\n", rc);
  return (rc);
 }

 oid = SYSCTL_ADD_NODE(&sc->ctx, children, OID_AUTO, "fwq", CTLFLAG_RD,
     ((void*)0), "firmware event queue");
 add_iq_sysctls(&sc->ctx, oid, fwq);

 return (0);
}
