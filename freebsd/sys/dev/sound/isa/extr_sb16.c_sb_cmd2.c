
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sb_info {int dummy; } ;


 int printf (char*,int,int) ;
 scalar_t__ sb_dspwr (struct sb_info*,int) ;
 int sb_lockassert (struct sb_info*) ;

__attribute__((used)) static int
sb_cmd2(struct sb_info *sb, u_char cmd, int val)
{
 int r;




 sb_lockassert(sb);
 r = 0;
     if (sb_dspwr(sb, cmd)) {
  if (sb_dspwr(sb, val & 0xff)) {
   if (sb_dspwr(sb, (val >> 8) & 0xff)) {
    r = 1;
   }
  }
     }

 return r;
}
