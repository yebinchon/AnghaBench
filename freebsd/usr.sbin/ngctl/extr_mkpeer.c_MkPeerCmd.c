
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ngm_mkpeer {int peerhook; int ourhook; int type; } ;
typedef int mkp ;


 int CMDRTN_ERROR ;
 int CMDRTN_OK ;
 int CMDRTN_USAGE ;
 int NGM_GENERIC_COOKIE ;
 int NGM_MKPEER ;
 scalar_t__ NgSendMsg (int ,char const*,int ,int ,struct ngm_mkpeer*,int) ;
 int csock ;
 int snprintf (int ,int,char*,char*) ;
 int warn (char*) ;

__attribute__((used)) static int
MkPeerCmd(int ac, char **av)
{
 struct ngm_mkpeer mkp;
 const char *path = ".";


 switch (ac) {
 case 5:
  path = av[1];
  ac--;
  av++;

 case 4:
  snprintf(mkp.type, sizeof(mkp.type), "%s", av[1]);
  snprintf(mkp.ourhook, sizeof(mkp.ourhook), "%s", av[2]);
  snprintf(mkp.peerhook, sizeof(mkp.peerhook), "%s", av[3]);
  break;
 default:
  return (CMDRTN_USAGE);
 }


 if (NgSendMsg(csock, path, NGM_GENERIC_COOKIE,
     NGM_MKPEER, &mkp, sizeof(mkp)) < 0) {
  warn("send msg");
  return (CMDRTN_ERROR);
 }
 return (CMDRTN_OK);
}
