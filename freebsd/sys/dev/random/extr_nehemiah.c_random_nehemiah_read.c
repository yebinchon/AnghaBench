
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef size_t u_int ;


 int FPU_KERN_NORMAL ;
 size_t MIN (int ,size_t) ;
 int VIA_RNG_store (int *) ;
 int curthread ;
 int fpu_ctx_save ;
 int fpu_kern_enter (int ,int ,int ) ;
 int fpu_kern_leave (int ,int ) ;
 int memcpy (int *,int *,size_t) ;

__attribute__((used)) static u_int
random_nehemiah_read(void *buf, u_int c)
{
 uint8_t *b;
 size_t count, ret;
 uint64_t tmp;

 fpu_kern_enter(curthread, fpu_ctx_save, FPU_KERN_NORMAL);
 b = buf;
 for (count = c; count > 0; count -= ret) {
  ret = MIN(VIA_RNG_store(&tmp), count);
  memcpy(b, &tmp, ret);
  b += ret;
 }
 fpu_kern_leave(curthread, fpu_ctx_save);

 return (c);
}
