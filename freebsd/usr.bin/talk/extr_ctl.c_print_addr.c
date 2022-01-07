
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_in {scalar_t__* sin_zero; int sin_family; int sin_port; TYPE_1__ sin_addr; } ;


 int printf (char*,int,...) ;
 int putchar (char) ;

void
print_addr(struct sockaddr_in addr)
{
 int i;

 printf("addr = %lx, port = %o, family = %o zero = ",
  (u_long)addr.sin_addr.s_addr, addr.sin_port, addr.sin_family);
 for (i = 0; i<8;i++)
 printf("%o ", (int)addr.sin_zero[i]);
 putchar('\n');
}
