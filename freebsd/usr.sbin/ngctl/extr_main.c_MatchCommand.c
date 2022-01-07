
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ngcmd {char const* cmd; char const** aliases; } ;


 int MAX_CMD_ALIAS ;
 int WHITESPACE ;
 scalar_t__ strcspn (char const*,int ) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char const*,scalar_t__) ;

__attribute__((used)) static int
MatchCommand(const struct ngcmd *cmd, const char *s)
{
 int a;


 if (strlen(s) <= strcspn(cmd->cmd, WHITESPACE)) {
  if (strncasecmp(s, cmd->cmd, strlen(s)) == 0)
   return (1);
 }


 for (a = 0; a < MAX_CMD_ALIAS && cmd->aliases[a] != ((void*)0); a++) {
  if (strlen(cmd->aliases[a]) >= strlen(s)) {
   if (strncasecmp(s, cmd->aliases[a], strlen(s)) == 0)
    return (1);
  }
 }


 return (0);
}
