
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ngcmd {int dummy; } ;


 scalar_t__ MatchCommand (struct ngcmd const*,char const*) ;
 struct ngcmd const** cmds ;
 int warnx (char*,char const*) ;

__attribute__((used)) static const struct ngcmd *
FindCommand(const char *string)
{
 int k, found = -1;

 for (k = 0; cmds[k] != ((void*)0); k++) {
  if (MatchCommand(cmds[k], string)) {
   if (found != -1) {
    warnx("\"%s\": ambiguous command", string);
    return (((void*)0));
   }
   found = k;
  }
 }
 if (found == -1) {
  warnx("\"%s\": unknown command", string);
  return (((void*)0));
 }
 return (cmds[found]);
}
