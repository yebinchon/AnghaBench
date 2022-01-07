
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_file {int dummy; } ;


 int KERN_PROC_FILEDESC ;
 void* procstat_sysctl (void*,int ,int,size_t*) ;

__attribute__((used)) static void *
elf_note_procstat_files(void *arg, size_t *sizep)
{

 return (procstat_sysctl(arg, KERN_PROC_FILEDESC,
     sizeof(struct kinfo_file), sizep));
}
