
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct dmar_unit {int fault_log_size; int unit; int fault_taskqueue; int fault_task; int fault_log; int fault_lock; } ;


 int DMAR_LOCK (struct dmar_unit*) ;
 int DMAR_UNLOCK (struct dmar_unit*) ;
 int MTX_SPIN ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int PI_AV ;
 int TASK_INIT (int *,int ,int ,struct dmar_unit*) ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 int dmar_clear_faults (struct dmar_unit*) ;
 int dmar_disable_fault_intr (struct dmar_unit*) ;
 int dmar_enable_fault_intr (struct dmar_unit*) ;
 int dmar_fault_task ;
 int malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int panic (char*) ;
 int taskqueue_create_fast (char*,int,int ,int *) ;
 int taskqueue_start_threads (int *,int,int ,char*,int ) ;
 int taskqueue_thread_enqueue ;

int
dmar_init_fault_log(struct dmar_unit *unit)
{

 mtx_init(&unit->fault_lock, "dmarflt", ((void*)0), MTX_SPIN);
 unit->fault_log_size = 256;
 TUNABLE_INT_FETCH("hw.dmar.fault_log_size", &unit->fault_log_size);
 if (unit->fault_log_size % 2 != 0)
  panic("hw.dmar_fault_log_size must be even");
 unit->fault_log = malloc(sizeof(uint64_t) * unit->fault_log_size,
     M_DEVBUF, M_WAITOK | M_ZERO);

 TASK_INIT(&unit->fault_task, 0, dmar_fault_task, unit);
 unit->fault_taskqueue = taskqueue_create_fast("dmarff", M_WAITOK,
     taskqueue_thread_enqueue, &unit->fault_taskqueue);
 taskqueue_start_threads(&unit->fault_taskqueue, 1, PI_AV,
     "dmar%d fault taskq", unit->unit);

 DMAR_LOCK(unit);
 dmar_disable_fault_intr(unit);
 dmar_clear_faults(unit);
 dmar_enable_fault_intr(unit);
 DMAR_UNLOCK(unit);

 return (0);
}
