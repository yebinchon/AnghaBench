
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int tid; int class_version; int mgmt_class; int base_version; } ;
struct ib_sa_mad {TYPE_1__ mad_hdr; } ;
struct ib_mad_agent {scalar_t__ hi_tid; } ;


 int IB_MGMT_BASE_VERSION ;
 int IB_MGMT_CLASS_SUBN_ADM ;
 int IB_SA_CLASS_VERSION ;
 int cpu_to_be64 (int) ;
 int memset (struct ib_sa_mad*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tid ;
 int tid_lock ;

__attribute__((used)) static void init_mad(struct ib_sa_mad *mad, struct ib_mad_agent *agent)
{
 unsigned long flags;

 memset(mad, 0, sizeof *mad);

 mad->mad_hdr.base_version = IB_MGMT_BASE_VERSION;
 mad->mad_hdr.mgmt_class = IB_MGMT_CLASS_SUBN_ADM;
 mad->mad_hdr.class_version = IB_SA_CLASS_VERSION;

 spin_lock_irqsave(&tid_lock, flags);
 mad->mad_hdr.tid =
  cpu_to_be64(((u64) agent->hi_tid) << 32 | tid++);
 spin_unlock_irqrestore(&tid_lock, flags);
}
