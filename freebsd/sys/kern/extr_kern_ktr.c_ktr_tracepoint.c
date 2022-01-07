
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef void* u_long ;
struct thread {int td_pflags; scalar_t__ td_critnest; } ;
struct ktr_entry {int ktr_cpu; char const* ktr_file; int ktr_line; char const* ktr_desc; void** ktr_parms; void* ktr_thread; int ktr_timestamp; } ;
struct ale {scalar_t__ ae_data; } ;


 int ALQ_NOWAIT ;
 int CPU_ISSET (int,int *) ;
 int KTR_CPU ;
 int KTR_TIME ;
 int TDP_INKTR ;
 scalar_t__ TD_IS_IDLETHREAD (struct thread*) ;
 struct thread* ald_thread ;
 struct ale* alq_get (int ,int ) ;
 int alq_post (int ,struct ale*) ;
 scalar_t__ atomic_cmpset_rel_int (int*,int,int) ;
 void* curthread ;
 scalar_t__ kdb_active ;
 int ktr_alq ;
 scalar_t__ ktr_alq_cnt ;
 scalar_t__ ktr_alq_enabled ;
 int ktr_alq_failed ;
 scalar_t__ ktr_alq_max ;
 struct ktr_entry* ktr_buf ;
 int ktr_cpumask ;
 int ktr_entries ;
 int ktr_idx ;
 int ktr_mask ;
 int ktr_verbose ;
 scalar_t__ panicstr ;
 int printf (char const*,...) ;
 scalar_t__ strncmp (char const*,char*,int) ;

void
ktr_tracepoint(uint64_t mask, const char *file, int line, const char *format,
    u_long arg1, u_long arg2, u_long arg3, u_long arg4, u_long arg5,
    u_long arg6)
{
 struct ktr_entry *entry;



 int newindex, saveindex;



 int cpu;

 if (panicstr || kdb_active)
  return;
 if ((ktr_mask & mask) == 0 || ktr_buf == ((void*)0))
  return;
 cpu = KTR_CPU;
 if (!CPU_ISSET(cpu, &ktr_cpumask))
  return;
 {
  do {
   saveindex = ktr_idx;
   newindex = (saveindex + 1) % ktr_entries;
  } while (atomic_cmpset_rel_int(&ktr_idx, saveindex, newindex) == 0);
  entry = &ktr_buf[saveindex];
 }
 entry->ktr_timestamp = KTR_TIME;
 entry->ktr_cpu = cpu;
 entry->ktr_thread = curthread;
 if (file != ((void*)0))
  while (strncmp(file, "../", 3) == 0)
   file += 3;
 entry->ktr_file = file;
 entry->ktr_line = line;
 entry->ktr_desc = format;
 entry->ktr_parms[0] = arg1;
 entry->ktr_parms[1] = arg2;
 entry->ktr_parms[2] = arg3;
 entry->ktr_parms[3] = arg4;
 entry->ktr_parms[4] = arg5;
 entry->ktr_parms[5] = arg6;
}
