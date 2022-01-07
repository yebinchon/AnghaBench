
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMDRTN_ERROR ;
 int CMDRTN_OK ;
 int CMDRTN_USAGE ;
 int NGM_GENERIC_COOKIE ;
 int NGM_SHUTDOWN ;
 scalar_t__ NgSendMsg (int ,char*,int ,int ,int *,int ) ;
 int csock ;
 int warn (char*) ;

__attribute__((used)) static int
ShutdownCmd(int ac, char **av)
{
 char *path;


 switch (ac) {
 case 2:
  path = av[1];
  break;
 default:
  return (CMDRTN_USAGE);
 }


 if (NgSendMsg(csock, path, NGM_GENERIC_COOKIE,
     NGM_SHUTDOWN, ((void*)0), 0) < 0) {
  warn("shutdown");
  return (CMDRTN_ERROR);
 }
 return (CMDRTN_OK);
}
