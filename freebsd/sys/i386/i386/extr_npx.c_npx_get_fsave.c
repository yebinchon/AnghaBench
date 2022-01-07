
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union savefpu {int sv_xmm; } ;
struct thread {int dummy; } ;
struct fpacc87 {int dummy; } ;
struct env87 {int dummy; } ;


 int bcopy (union savefpu*,void*,int) ;
 scalar_t__ cpu_fxsr ;
 struct thread* curthread ;
 union savefpu* get_pcb_user_save_td (struct thread*) ;
 int npx_fill_fpregs_xmm1 (int *,void*) ;
 int npxgetregs (struct thread*) ;

void
npx_get_fsave(void *addr)
{
 struct thread *td;
 union savefpu *sv;

 td = curthread;
 npxgetregs(td);
 sv = get_pcb_user_save_td(td);
 if (cpu_fxsr)
  npx_fill_fpregs_xmm1(&sv->sv_xmm, addr);
 else
  bcopy(sv, addr, sizeof(struct env87) +
      sizeof(struct fpacc87[8]));
}
