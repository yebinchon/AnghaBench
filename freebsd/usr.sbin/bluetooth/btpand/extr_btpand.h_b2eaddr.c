
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int * b; } ;
typedef TYPE_1__ bdaddr_t ;


 int ETHER_ADDR_LEN ;

__attribute__((used)) static inline void
b2eaddr(void *dst, bdaddr_t *src)
{
 uint8_t *d = dst;
 int i;

 for (i = 0; i < ETHER_ADDR_LEN; i++)
  d[i] = src->b[ETHER_ADDR_LEN - i - 1];
}
