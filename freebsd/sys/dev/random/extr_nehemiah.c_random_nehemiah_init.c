
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FPU_KERN_NORMAL ;
 int fpu_ctx_save ;
 int fpu_kern_alloc_ctx (int ) ;

__attribute__((used)) static void
random_nehemiah_init(void)
{

 fpu_ctx_save = fpu_kern_alloc_ctx(FPU_KERN_NORMAL);
}
