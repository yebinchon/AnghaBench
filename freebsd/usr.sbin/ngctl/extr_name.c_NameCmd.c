
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ngm_name {int name; } ;
typedef int name ;


 int CMDRTN_ERROR ;
 int CMDRTN_OK ;
 int CMDRTN_USAGE ;
 int NGM_GENERIC_COOKIE ;
 int NGM_NAME ;
 scalar_t__ NgSendMsg (int ,char*,int ,int ,struct ngm_name*,int) ;
 int csock ;
 int snprintf (int ,int,char*,char*) ;
 int warn (char*) ;

__attribute__((used)) static int
NameCmd(int ac, char **av)
{
 struct ngm_name name;
 char *path;


 switch (ac) {
 case 3:
  path = av[1];
  snprintf(name.name, sizeof(name.name), "%s", av[2]);
  break;
 default:
  return (CMDRTN_USAGE);
 }


 if (NgSendMsg(csock, path, NGM_GENERIC_COOKIE,
     NGM_NAME, &name, sizeof(name)) < 0) {
  warn("send msg");
  return (CMDRTN_ERROR);
 }
 return (CMDRTN_OK);
}
