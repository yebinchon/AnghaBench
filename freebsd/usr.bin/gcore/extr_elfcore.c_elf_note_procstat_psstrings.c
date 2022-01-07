
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int KERN_PROC_PS_STRINGS ;
 void* procstat_sysctl (void*,int ,int,size_t*) ;

__attribute__((used)) static void *
elf_note_procstat_psstrings(void *arg, size_t *sizep)
{

 return (procstat_sysctl(arg, KERN_PROC_PS_STRINGS,
     sizeof(vm_offset_t), sizep));
}
