
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ngcmd {int (* func ) (int,char**) ;int cmd; } ;


 int CMDRTN_ERROR ;
 int CMDRTN_OK ;
 int CMDRTN_USAGE ;
 struct ngcmd* FindCommand (char*) ;
 int stub1 (int,char**) ;
 int warnx (char*,int ) ;

__attribute__((used)) static int
DoCommand(int ac, char **av)
{
 const struct ngcmd *cmd;
 int rtn;

 if (ac == 0 || *av[0] == 0)
  return (CMDRTN_OK);
 if ((cmd = FindCommand(av[0])) == ((void*)0))
  return (CMDRTN_ERROR);
 if ((rtn = (*cmd->func)(ac, av)) == CMDRTN_USAGE)
  warnx("usage: %s", cmd->cmd);
 return (rtn);
}
