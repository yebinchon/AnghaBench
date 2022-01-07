
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fpu_ctx_save ;
 int fpu_kern_free_ctx (int ) ;

__attribute__((used)) static void
random_nehemiah_deinit(void)
{

 fpu_kern_free_ctx(fpu_ctx_save);
}
