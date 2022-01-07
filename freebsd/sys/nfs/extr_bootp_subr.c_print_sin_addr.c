
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int sin_addr; } ;


 int print_in_addr (int ) ;

__attribute__((used)) static void
print_sin_addr(struct sockaddr_in *sin)
{

 print_in_addr(sin->sin_addr);
}
