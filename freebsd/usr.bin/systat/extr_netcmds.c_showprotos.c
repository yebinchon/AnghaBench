
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TCP ;
 int UDP ;
 int addch (char) ;
 int addstr (char*) ;
 int protos ;

__attribute__((used)) static void
showprotos(void)
{

 if ((protos&TCP) == 0)
  addch('!');
 addstr("tcp ");
 if ((protos&UDP) == 0)
  addch('!');
 addstr("udp ");
}
