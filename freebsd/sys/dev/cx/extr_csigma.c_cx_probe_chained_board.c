
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int port_t ;


 scalar_t__ BSR (int ) ;


 int BSR_OSC_MASK ;
 int BSR_REV_MASK ;
 int BSR_VAR_MASK ;
 int inb (scalar_t__) ;

__attribute__((used)) static int cx_probe_chained_board (port_t port, int *c0, int *c1)
{
 int rev, i;


 rev = inb (BSR(port));
 *c0 = *c1 = 0;
 switch (rev & BSR_VAR_MASK) {
 case 142: *c0 = 1; break;
 case 141: *c1 = 1; break;
 case 134: *c0 = *c1 = 1; break;
 case 137: *c0 = 1; break;
 case 130: *c0 = *c1 = 1; break;
 case 136: *c0 = 1; break;
 case 129: *c0 = *c1 = 1; break;
 case 135: *c0 = 1; break;
 case 128: *c0 = *c1 = 1; break;
 case 140: *c0 = 1; break;
 case 132: *c0 = *c1 = 1; break;
 case 139: *c0 = 1; break;
 case 131: *c0 = *c1 = 1; break;
 case 138: *c0 = 1; break;
 case 133: *c0 = *c1 = 1; break;
 default: return (0);
 }

 switch (rev & BSR_OSC_MASK) {
 case 143:
 case 144:
  break;
 default:
  return (0);
 }

 for (i=2; i<0x10; i+=2)
  if ((inb (BSR(port)+i) & BSR_REV_MASK) != (rev & BSR_REV_MASK))
   return (0);
 return (1);
}
