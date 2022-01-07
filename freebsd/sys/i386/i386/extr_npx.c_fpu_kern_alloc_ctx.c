
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct fpu_kern_ctx {int dummy; } ;


 int FPU_KERN_NOWAIT ;
 int M_FPUKERN_CTX ;
 int M_NOWAIT ;
 int M_WAITOK ;
 int M_ZERO ;
 int XSAVE_AREA_ALIGN ;
 int cpu_max_ext_state_size ;
 struct fpu_kern_ctx* malloc (size_t,int ,int) ;

struct fpu_kern_ctx *
fpu_kern_alloc_ctx(u_int flags)
{
 struct fpu_kern_ctx *res;
 size_t sz;

 sz = sizeof(struct fpu_kern_ctx) + XSAVE_AREA_ALIGN +
     cpu_max_ext_state_size;
 res = malloc(sz, M_FPUKERN_CTX, ((flags & FPU_KERN_NOWAIT) ?
     M_NOWAIT : M_WAITOK) | M_ZERO);
 return (res);
}
