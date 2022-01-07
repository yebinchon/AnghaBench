
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sb_info {int dummy; } ;


 int printf (char*,int,int) ;
 int sb_dspwr (struct sb_info*,int) ;

__attribute__((used)) static int
sb_cmd1(struct sb_info *sb, u_char cmd, int val)
{



     if (sb_dspwr(sb, cmd)) {
  return sb_dspwr(sb, val & 0xff);
     } else return 0;
}
