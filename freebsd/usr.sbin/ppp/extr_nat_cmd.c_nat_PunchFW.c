
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdargs {int argc; int argn; int * argv; } ;


 int LibAliasSetFWBase (int ,long,long) ;
 int LibAliasSetMode (int ,int ,int ) ;
 int PKT_ALIAS_PUNCH_FW ;
 int la ;
 long strtol (int ,char**,int) ;

int
nat_PunchFW(struct cmdargs const *arg)
{
  char *end;
  long base, count;

  if (arg->argc == arg->argn) {
    LibAliasSetMode(la, 0, PKT_ALIAS_PUNCH_FW);
    return 0;
  }

  if (arg->argc != arg->argn + 2)
    return -1;

  base = strtol(arg->argv[arg->argn], &end, 10);
  if (*end != '\0' || base < 0)
    return -1;

  count = strtol(arg->argv[arg->argn + 1], &end, 10);
  if (*end != '\0' || count < 0)
    return -1;

  LibAliasSetFWBase(la, base, count);
  LibAliasSetMode(la, PKT_ALIAS_PUNCH_FW, PKT_ALIAS_PUNCH_FW);

  return 0;
}
