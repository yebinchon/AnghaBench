
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ngm_rmhook {int ourhook; } ;
typedef int rmh ;


 int CMDRTN_ERROR ;
 int CMDRTN_OK ;
 int CMDRTN_USAGE ;
 int NGM_GENERIC_COOKIE ;
 int NGM_RMHOOK ;
 scalar_t__ NgSendMsg (int ,char const*,int ,int ,struct ngm_rmhook*,int) ;
 int csock ;
 int snprintf (int ,int,char*,char*) ;
 int warn (char*) ;

__attribute__((used)) static int
RmHookCmd(int ac, char **av)
{
 struct ngm_rmhook rmh;
 const char *path = ".";


 switch (ac) {
 case 3:
  path = av[1];
  ac--;
  av++;

 case 2:
  snprintf(rmh.ourhook, sizeof(rmh.ourhook), "%s", av[1]);
  break;
 default:
  return (CMDRTN_USAGE);
 }


 if (NgSendMsg(csock, path, NGM_GENERIC_COOKIE,
     NGM_RMHOOK, &rmh, sizeof(rmh)) < 0) {
  warn("send msg");
  return (CMDRTN_ERROR);
 }
 return (CMDRTN_OK);
}
