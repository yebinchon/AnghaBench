
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;


 int PRC_NCMDS ;

void
raw_ctlinput(int cmd, struct sockaddr *arg, void *dummy)
{

 if (cmd < 0 || cmd >= PRC_NCMDS)
  return;

}
