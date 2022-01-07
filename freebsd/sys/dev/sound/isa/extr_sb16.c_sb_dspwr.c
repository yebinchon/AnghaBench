
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct sb_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ td_intr_nesting_level; } ;


 int DELAY (int) ;
 int SBDSP_CMD ;
 int SBDSP_STATUS ;
 TYPE_1__* curthread ;
 int printf (char*,int) ;
 int sb_rd (struct sb_info*,int ) ;
 int sb_wr (struct sb_info*,int ,int) ;

__attribute__((used)) static int
sb_dspwr(struct sb_info *sb, u_char val)
{
     int i;

     for (i = 0; i < 1000; i++) {
  if ((sb_rd(sb, SBDSP_STATUS) & 0x80))
       DELAY((i > 100)? 1000 : 10);
      else {
   sb_wr(sb, SBDSP_CMD, val);
   return 1;
  }
     }
 if (curthread->td_intr_nesting_level == 0)
  printf("sb_dspwr(0x%02x) timed out.\n", val);
     return 0;
}
