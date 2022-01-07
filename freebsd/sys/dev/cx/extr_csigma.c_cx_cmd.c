
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int port_t ;


 int CCR (int ) ;
 scalar_t__ inb (int ) ;
 int outb (int ,int) ;

void cx_cmd (port_t base, int cmd)
{
 port_t port = CCR(base);
 int count;


 for (count=0; inb(port) && count<20000; ++count)
  continue;


 outb (port, cmd);


 for (count=0; inb(port) && count<20000; ++count)
  continue;
}
