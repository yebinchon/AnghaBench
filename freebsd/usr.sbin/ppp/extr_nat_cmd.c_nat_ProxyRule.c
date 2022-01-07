
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdargs {int argn; int argc; int * argv; } ;


 int LINE_LEN ;
 int LibAliasProxyRule (int ,char*) ;
 int la ;
 int strcpy (char*,int ) ;
 size_t strlen (int ) ;

int
nat_ProxyRule(struct cmdargs const *arg)
{
  char cmd[LINE_LEN];
  int f, pos;
  size_t len;

  if (arg->argn >= arg->argc)
    return -1;

  for (f = arg->argn, pos = 0; f < arg->argc; f++) {
    len = strlen(arg->argv[f]);
    if (sizeof cmd - pos < len + (len ? 1 : 0))
      break;
    if (len)
      cmd[pos++] = ' ';
    strcpy(cmd + pos, arg->argv[f]);
    pos += len;
  }

  return LibAliasProxyRule(la, cmd);
}
