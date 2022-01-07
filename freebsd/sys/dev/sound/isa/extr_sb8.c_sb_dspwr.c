
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sb_info {int dummy; } ;


 int DELAY (int) ;
 int SBDSP_CMD ;
 int printf (char*,int) ;
 scalar_t__ sb_dspready (struct sb_info*) ;
 int sb_wr (struct sb_info*,int ,int) ;

__attribute__((used)) static int
sb_dspwr(struct sb_info *sb, u_char val)
{
     int i;

     for (i = 0; i < 1000; i++) {
  if (sb_dspready(sb)) {
       sb_wr(sb, SBDSP_CMD, val);
       return 1;
  }
  if (i > 10) DELAY((i > 100)? 1000 : 10);
     }
     printf("sb_dspwr(0x%02x) timed out.\n", val);
     return 0;
}
