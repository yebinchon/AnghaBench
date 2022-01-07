
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sbuf {int dummy; } ;
struct proc {int dummy; } ;
typedef int Elf_Auxinfo ;
typedef int Elf32_Auxinfo ;


 int ENOMEM ;
 int M_TEMP ;
 int PROC_AUX ;
 int SV_ILP32 ;
 scalar_t__ SV_PROC_FLAG (struct proc*,int ) ;
 int free (char**,int ) ;
 int get_proc_vector (struct thread*,struct proc*,char***,size_t*,int ) ;
 scalar_t__ sbuf_bcat (struct sbuf*,char**,size_t) ;

int
proc_getauxv(struct thread *td, struct proc *p, struct sbuf *sb)
{
 size_t vsize, size;
 char **auxv;
 int error;

 error = get_proc_vector(td, p, &auxv, &vsize, PROC_AUX);
 if (error == 0) {





   size = vsize * sizeof(Elf_Auxinfo);
  if (sbuf_bcat(sb, auxv, size) != 0)
   error = ENOMEM;
  free(auxv, M_TEMP);
 }
 return (error);
}
