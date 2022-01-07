
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct resource {int dummy; } ;


 int DELAY (int) ;
 int DSP_DATA_AVAIL ;
 int DSP_READ ;
 int sb_rd (struct resource*,int ) ;

__attribute__((used)) static u_int
sb_get_byte(struct resource *io)
{
     int i;

     for (i = 1000; i > 0; i--) {
  if (sb_rd(io, DSP_DATA_AVAIL) & 0x80)
   return sb_rd(io, DSP_READ);
  else
   DELAY(20);
     }
     return 0xffff;
}
