
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lwpid_t ;
typedef int fpregset_t ;
typedef void elfcore_fpregset_t ;


 int PT_GETFPREGS ;
 void* calloc (int,int) ;
 int elf_convert_fpregset (void*,int *) ;
 int errx (int,char*) ;
 int ptrace (int ,int ,void*,int ) ;

__attribute__((used)) static void *
elf_note_fpregset(void *arg, size_t *sizep)
{
 lwpid_t tid;
 elfcore_fpregset_t *fpregset;
 fpregset_t fpreg;

 tid = *(lwpid_t *)arg;
 fpregset = calloc(1, sizeof(*fpregset));
 if (fpregset == ((void*)0))
  errx(1, "out of memory");
 ptrace(PT_GETFPREGS, tid, (void *)&fpreg, 0);
 elf_convert_fpregset(fpregset, &fpreg);

 *sizep = sizeof(*fpregset);
 return (fpregset);
}
