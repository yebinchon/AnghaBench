
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sb_info {int dummy; } ;


 int DELAY (int) ;
 int DSP_DATA_AVAIL ;
 int DSP_READ ;
 int sb_rd (struct sb_info*,int ) ;

__attribute__((used)) static u_int
sb_get_byte(struct sb_info *sb)
{
     int i;

     for (i = 1000; i > 0; i--) {
  if (sb_rd(sb, DSP_DATA_AVAIL) & 0x80)
   return sb_rd(sb, DSP_READ);
  else
   DELAY(20);
     }
     return 0xffff;
}
