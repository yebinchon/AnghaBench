
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptrace_lwpinfo {int dummy; } ;
typedef int lwpinfo ;
typedef int lwpid_t ;
typedef int elfcore_lwpinfo_t ;


 int PT_LWPINFO ;
 void* calloc (int,int) ;
 int elf_convert_lwpinfo (int *,struct ptrace_lwpinfo*) ;
 int errx (int,char*) ;
 int ptrace (int ,int ,void*,int) ;

__attribute__((used)) static void *
elf_note_ptlwpinfo(void *arg, size_t *sizep)
{
 lwpid_t tid;
 elfcore_lwpinfo_t *elf_info;
 struct ptrace_lwpinfo lwpinfo;
 void *p;

 tid = *(lwpid_t *)arg;
 p = calloc(1, sizeof(int) + sizeof(elfcore_lwpinfo_t));
 if (p == ((void*)0))
  errx(1, "out of memory");
 *(int *)p = sizeof(elfcore_lwpinfo_t);
 elf_info = (void *)((int *)p + 1);
 ptrace(PT_LWPINFO, tid, (void *)&lwpinfo, sizeof(lwpinfo));
 elf_convert_lwpinfo(elf_info, &lwpinfo);

 *sizep = sizeof(int) + sizeof(struct ptrace_lwpinfo);
 return (p);
}
