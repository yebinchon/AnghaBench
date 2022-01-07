
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;



__attribute__((used)) static u_int
read_ss(void)
{
 u_int res;

 __asm volatile("movl\t%%ss,%0" : "=r" (res));
 return (res);
}
