
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_proc {int ki_comm; int ki_tid; int ki_pid; } ;


 int PS_OPT_PERTHREAD ;
 int procstat_opts ;
 int xo_emit (char*,int ) ;

__attribute__((used)) static void
print_prefix(struct kinfo_proc *kipp)
{

 xo_emit("{d:process_id/%5d/%d} ", kipp->ki_pid);
 if ((procstat_opts & PS_OPT_PERTHREAD) != 0)
  xo_emit("{d:thread_id/%6d/%d} ", kipp->ki_tid);
 xo_emit("{d:command/%-16s/%s} ", kipp->ki_comm);
}
