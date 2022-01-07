
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_proc {int dummy; } ;


 int KERN_PROC_INC_THREAD ;
 int KERN_PROC_PID ;
 void* procstat_sysctl (void*,int,int,size_t*) ;

__attribute__((used)) static void *
elf_note_procstat_proc(void *arg, size_t *sizep)
{

 return (procstat_sysctl(arg, KERN_PROC_PID | KERN_PROC_INC_THREAD,
     sizeof(struct kinfo_proc), sizep));
}
