
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KERN_PROC_OSREL ;
 void* procstat_sysctl (void*,int ,int,size_t*) ;

__attribute__((used)) static void *
elf_note_procstat_osrel(void *arg, size_t *sizep)
{

 return (procstat_sysctl(arg, KERN_PROC_OSREL, sizeof(int), sizep));
}
