
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ngm_connect {int peerhook; int ourhook; int path; } ;
typedef int con ;


 int CMDRTN_ERROR ;
 int CMDRTN_OK ;
 int CMDRTN_USAGE ;
 int NGM_CONNECT ;
 int NGM_GENERIC_COOKIE ;
 scalar_t__ NgSendMsg (int ,char const*,int ,int ,struct ngm_connect*,int) ;
 int csock ;
 int snprintf (int ,int,char*,char*) ;
 int warn (char*) ;

__attribute__((used)) static int
ConnectCmd(int ac, char **av)
{
 struct ngm_connect con;
 const char *path = ".";


 switch (ac) {
 case 5:
  path = av[1];
  ac--;
  av++;

 case 4:
  snprintf(con.path, sizeof(con.path), "%s", av[1]);
  snprintf(con.ourhook, sizeof(con.ourhook), "%s", av[2]);
  snprintf(con.peerhook, sizeof(con.peerhook), "%s", av[3]);
  break;
 default:
  return (CMDRTN_USAGE);
 }


 if (NgSendMsg(csock, path, NGM_GENERIC_COOKIE,
     NGM_CONNECT, &con, sizeof(con)) < 0) {
  warn("send msg");
  return (CMDRTN_ERROR);
 }
 return (CMDRTN_OK);
}
