
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat_cmd {int cmp; char const* command; } ;


 int PS_CMP_PLURAL ;
 int PS_CMP_SUBSTR ;
 struct procstat_cmd* cmd_table ;
 size_t nitems (struct procstat_cmd*) ;
 int strcasecmp (char const*,char*) ;
 int strlen (char const*) ;
 int strncasecmp (char const*,char const*,size_t) ;

__attribute__((used)) static const struct procstat_cmd *
getcmd(const char *str)
{
 const struct procstat_cmd *cmd;
 size_t i, l;
 int cmp, s;

 if (str == ((void*)0))
  return (((void*)0));
 cmd = ((void*)0);
 if ((l = strlen(str)) == 0)
  return (getcmd("basic"));
 s = l > 1 && strcasecmp(str + l - 1, "s") == 0;
 for (i = 0; i < nitems(cmd_table); i++) {




  if (cmd == ((void*)0) && (cmd_table[i].cmp & PS_CMP_SUBSTR))
   cmp = strncasecmp(str, cmd_table[i].command, l -
       ((cmd_table[i].cmp & PS_CMP_PLURAL) && s ? 1 : 0));
  else if ((cmd_table[i].cmp & PS_CMP_PLURAL) && s &&
      l == strlen(cmd_table[i].command) + 1)
   cmp = strncasecmp(str, cmd_table[i].command, l - 1);
  else
   cmp = strcasecmp(str, cmd_table[i].command);
  if (cmp == 0)
   cmd = &cmd_table[i];
 }
 return (cmd);
}
