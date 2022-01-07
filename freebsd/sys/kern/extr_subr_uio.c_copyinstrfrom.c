
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int copyinstr (void const*,void*,size_t,size_t*) ;
 int copystr (void const*,void*,size_t,size_t*) ;
 int panic (char*,int) ;

int
copyinstrfrom(const void * __restrict src, void * __restrict dst, size_t len,
    size_t * __restrict copied, int seg)
{
 int error = 0;

 switch (seg) {
 case 128:
  error = copyinstr(src, dst, len, copied);
  break;
 case 129:
  error = copystr(src, dst, len, copied);
  break;
 default:
  panic("copyinstrfrom: bad seg %d\n", seg);
 }
 return (error);
}
