
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int port_t ;


 scalar_t__ BSR (int ) ;
 int BSR2X_REV_MASK ;
 int BSR2X_VAR_MASK ;
 int CRONYX_22 ;
 int CRONYX_24 ;
 int inb (scalar_t__) ;

__attribute__((used)) static int cx_probe_2x_board (port_t port)
{
 int rev, i;


 rev = inb (BSR(port));
 if ((rev & BSR2X_VAR_MASK) != CRONYX_22 &&
     (rev & BSR2X_VAR_MASK) != CRONYX_24)
  return (0);

 for (i=2; i<0x10; i+=2)
  if ((inb (BSR(port)+i) & BSR2X_REV_MASK) !=
      (rev & BSR2X_REV_MASK))
   return (0);
 return (1);
}
