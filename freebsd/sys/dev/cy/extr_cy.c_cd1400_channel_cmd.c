
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct com_s {int dummy; } ;


 int CD1400_CCR ;
 int cd1400_channel_cmd_wait (struct com_s*) ;
 int cd_setreg (struct com_s*,int ,int) ;

__attribute__((used)) static void
cd1400_channel_cmd(struct com_s *com, int cmd)
{
 cd1400_channel_cmd_wait(com);
 cd_setreg(com, CD1400_CCR, cmd);
 cd1400_channel_cmd_wait(com);
}
