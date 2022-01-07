
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int arc4random () ;
 int bcopy (int *,int *,int) ;

void
get_random_bytes(void *p, size_t n)
{
 uint8_t *dp = p;

 while (n > 0) {
  uint32_t v = arc4random();
  size_t nb = n > sizeof(uint32_t) ? sizeof(uint32_t) : n;
  bcopy(&v, dp, n > sizeof(uint32_t) ? sizeof(uint32_t) : n);
  dp += sizeof(uint32_t), n -= nb;
 }
}
