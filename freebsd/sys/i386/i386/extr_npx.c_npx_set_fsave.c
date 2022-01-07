
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union savefpu {int sv_xmm; } ;
typedef int sv ;
struct fpacc87 {int dummy; } ;
struct env87 {int dummy; } ;


 int bcopy (void*,union savefpu*,int) ;
 int bzero (union savefpu*,int) ;
 scalar_t__ cpu_fxsr ;
 int curthread ;
 int npx_set_fpregs_xmm (void*,int *) ;
 int npxsetregs (int ,union savefpu*,int *,int ) ;

int
npx_set_fsave(void *addr)
{
 union savefpu sv;
 int error;

 bzero(&sv, sizeof(sv));
 if (cpu_fxsr)
  npx_set_fpregs_xmm(addr, &sv.sv_xmm);
 else
  bcopy(addr, &sv, sizeof(struct env87) +
      sizeof(struct fpacc87[8]));
 error = npxsetregs(curthread, &sv, ((void*)0), 0);
 return (error);
}
