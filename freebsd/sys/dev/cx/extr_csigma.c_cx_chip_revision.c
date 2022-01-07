
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int port_t ;


 int BSR_VAR_MASK ;
 int CRONYX_400 ;
 int CS0 (int ) ;
 int CS1 (int ) ;
 int GFRCR (int ) ;
 int inb (int ) ;

__attribute__((used)) static int cx_chip_revision (port_t port, int rev)
{
 int count;


 port = ((rev & BSR_VAR_MASK) != CRONYX_400) ? CS0(port) : CS1(port);


 for (count=0; inb(GFRCR(port))==0; ++count)
  if (count >= 20000)
   return (0);

 return inb (GFRCR (port));
}
