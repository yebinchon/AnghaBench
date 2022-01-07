
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct taskqgroup {int dummy; } ;
struct grouptask {int dummy; } ;
typedef scalar_t__ iflib_intr_type_t ;
typedef TYPE_2__* if_irq_t ;
typedef TYPE_3__* if_ctx_t ;
typedef int device_t ;
struct TYPE_8__ {scalar_t__ isc_nrxqsets; } ;
struct TYPE_10__ {int ifc_sysctl_core_offset; int ifc_cpuid_highest; TYPE_1__ ifc_softc_ctx; scalar_t__ ifc_sysctl_separate_txrx; int ifc_dev; } ;
struct TYPE_9__ {int ii_res; } ;


 int EOPNOTSUPP ;
 scalar_t__ IFLIB_INTR_TX ;
 int device_printf (int ,char*,...) ;
 int find_close_core (int,int) ;
 int find_nth (TYPE_3__*,int) ;
 int get_core_offset (TYPE_3__*,scalar_t__,int) ;
 int taskqgroup_attach_cpu (struct taskqgroup*,struct grouptask*,void*,int,int ,int ,char const*) ;

__attribute__((used)) static inline int
iflib_irq_set_affinity(if_ctx_t ctx, if_irq_t irq, iflib_intr_type_t type,
    int qid, struct grouptask *gtask, struct taskqgroup *tqg, void *uniq,
    const char *name)
{
 device_t dev;
 int co, cpuid, err, tid;

 dev = ctx->ifc_dev;
 co = ctx->ifc_sysctl_core_offset;
 if (ctx->ifc_sysctl_separate_txrx && type == IFLIB_INTR_TX)
  co += ctx->ifc_softc_ctx.isc_nrxqsets;
 cpuid = find_nth(ctx, qid + co);
 tid = get_core_offset(ctx, type, qid);
 if (tid < 0) {
  device_printf(dev, "get_core_offset failed\n");
  return (EOPNOTSUPP);
 }
 cpuid = find_close_core(cpuid, tid);
 err = taskqgroup_attach_cpu(tqg, gtask, uniq, cpuid, dev, irq->ii_res,
     name);
 if (err) {
  device_printf(dev, "taskqgroup_attach_cpu failed %d\n", err);
  return (err);
 }




 return (0);
}
