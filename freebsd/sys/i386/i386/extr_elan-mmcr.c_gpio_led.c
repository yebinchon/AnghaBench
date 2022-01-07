
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int* mmcrptr ;

__attribute__((used)) static void
gpio_led(void *cookie, int state)
{
 u_int u, v;

 u = *(int *)cookie;
 v = u & 0xffff;
 u >>= 16;
 if (!state)
  v ^= 0xc;
 mmcrptr[v / 2] = u;
}
