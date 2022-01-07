
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct dmar_unit {int hw_cap; int qi_enabled; int inv_waitd_seq; unsigned long long inv_queue_size; int inv_queue; int inv_waitd_seq_hw; void* inv_waitd_seq_hw_phys; scalar_t__ inv_queue_avail; scalar_t__ inv_waitd_gen; int unit; int qi_taskqueue; int qi_task; int tlb_flush_entries; } ;


 int DMAR_CAP_CM ;
 int DMAR_HAS_QI (struct dmar_unit*) ;
 int DMAR_ICS_IWC ;
 int DMAR_ICS_REG ;
 int DMAR_IQA_QS_DEF ;
 int DMAR_IQA_QS_MAX ;
 int DMAR_IQA_REG ;
 int DMAR_IQT_REG ;
 scalar_t__ DMAR_IQ_DESCR_SZ ;
 int DMAR_LOCK (struct dmar_unit*) ;
 int DMAR_UNLOCK (struct dmar_unit*) ;
 int M_WAITOK ;
 int M_ZERO ;
 unsigned long long PAGE_SIZE ;
 int PI_AV ;
 int TAILQ_INIT (int *) ;
 int TASK_INIT (int *,int ,int ,struct dmar_unit*) ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 int VM_MEMATTR_DEFAULT ;
 int dmar_enable_qi (struct dmar_unit*) ;
 int dmar_enable_qi_intr (struct dmar_unit*) ;
 int dmar_high ;
 int dmar_qi_task ;
 int dmar_read4 (struct dmar_unit*,int ) ;
 int dmar_write4 (struct dmar_unit*,int ,int) ;
 int dmar_write8 (struct dmar_unit*,int ,int) ;
 int kmem_alloc_contig (unsigned long long,int,int ,int ,unsigned long long,int ,int ) ;
 void* pmap_kextract (int ) ;
 int taskqueue_create_fast (char*,int,int ,int *) ;
 int taskqueue_start_threads (int *,int,int ,char*,int ) ;
 int taskqueue_thread_enqueue ;

int
dmar_init_qi(struct dmar_unit *unit)
{
 uint64_t iqa;
 uint32_t ics;
 int qi_sz;

 if (!DMAR_HAS_QI(unit) || (unit->hw_cap & DMAR_CAP_CM) != 0)
  return (0);
 unit->qi_enabled = 1;
 TUNABLE_INT_FETCH("hw.dmar.qi", &unit->qi_enabled);
 if (!unit->qi_enabled)
  return (0);

 TAILQ_INIT(&unit->tlb_flush_entries);
 TASK_INIT(&unit->qi_task, 0, dmar_qi_task, unit);
 unit->qi_taskqueue = taskqueue_create_fast("dmarqf", M_WAITOK,
     taskqueue_thread_enqueue, &unit->qi_taskqueue);
 taskqueue_start_threads(&unit->qi_taskqueue, 1, PI_AV,
     "dmar%d qi taskq", unit->unit);

 unit->inv_waitd_gen = 0;
 unit->inv_waitd_seq = 1;

 qi_sz = DMAR_IQA_QS_DEF;
 TUNABLE_INT_FETCH("hw.dmar.qi_size", &qi_sz);
 if (qi_sz > DMAR_IQA_QS_MAX)
  qi_sz = DMAR_IQA_QS_MAX;
 unit->inv_queue_size = (1ULL << qi_sz) * PAGE_SIZE;

 unit->inv_queue_avail = unit->inv_queue_size - DMAR_IQ_DESCR_SZ;


 unit->inv_queue = kmem_alloc_contig(unit->inv_queue_size, M_WAITOK |
     M_ZERO, 0, dmar_high, PAGE_SIZE, 0, VM_MEMATTR_DEFAULT);
 unit->inv_waitd_seq_hw_phys = pmap_kextract(
     (vm_offset_t)&unit->inv_waitd_seq_hw);

 DMAR_LOCK(unit);
 dmar_write8(unit, DMAR_IQT_REG, 0);
 iqa = pmap_kextract(unit->inv_queue);
 iqa |= qi_sz;
 dmar_write8(unit, DMAR_IQA_REG, iqa);
 dmar_enable_qi(unit);
 ics = dmar_read4(unit, DMAR_ICS_REG);
 if ((ics & DMAR_ICS_IWC) != 0) {
  ics = DMAR_ICS_IWC;
  dmar_write4(unit, DMAR_ICS_REG, ics);
 }
 dmar_enable_qi_intr(unit);
 DMAR_UNLOCK(unit);

 return (0);
}
