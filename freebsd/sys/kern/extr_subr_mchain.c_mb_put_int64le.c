
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x ;
struct mbchain {int dummy; } ;
typedef int int64_t ;
typedef int caddr_t ;


 int MB_MSYSTEM ;
 int htole64 (int ) ;
 int mb_put_mem (struct mbchain*,int ,int,int ) ;

int
mb_put_int64le(struct mbchain *mbp, int64_t x)
{
 x = htole64(x);
 return (mb_put_mem(mbp, (caddr_t)&x, sizeof(x), MB_MSYSTEM));
}
