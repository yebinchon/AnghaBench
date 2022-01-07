
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x ;
typedef int uint32_t ;
struct mbchain {int dummy; } ;
typedef int caddr_t ;


 int MB_MSYSTEM ;
 int htobe32 (int ) ;
 int mb_put_mem (struct mbchain*,int ,int,int ) ;

int
mb_put_uint32be(struct mbchain *mbp, uint32_t x)
{
 x = htobe32(x);
 return (mb_put_mem(mbp, (caddr_t)&x, sizeof(x), MB_MSYSTEM));
}
