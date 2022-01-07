
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int port_t ;


 int CCR_RSTALL ;
 int GFRCR (int ) ;
 int cx_cmd (int ,int ) ;
 scalar_t__ inb (int ) ;

__attribute__((used)) static int cx_reset (port_t port)
{
 int count;


 for (count=0; count<20000; ++count)
  if (inb(GFRCR(port)) != 0)
   break;

 cx_cmd (port, CCR_RSTALL);



 for (count=0; count<20000; ++count)
  if (inb(GFRCR(port)) != 0)
   return (1);


 return (0);
}
