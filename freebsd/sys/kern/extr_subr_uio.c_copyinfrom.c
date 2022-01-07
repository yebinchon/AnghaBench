
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bcopy (void const*,void*,size_t) ;
 int copyin (void const*,void*,size_t) ;
 int panic (char*,int) ;

int
copyinfrom(const void * __restrict src, void * __restrict dst, size_t len,
    int seg)
{
 int error = 0;

 switch (seg) {
 case 128:
  error = copyin(src, dst, len);
  break;
 case 129:
  bcopy(src, dst, len);
  break;
 default:
  panic("copyinfrom: bad seg %d\n", seg);
 }
 return (error);
}
