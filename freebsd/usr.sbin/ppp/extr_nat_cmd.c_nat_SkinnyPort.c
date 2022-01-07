
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdargs {int argc; int argn; int * argv; } ;


 int LibAliasSetSkinnyPort (int ,long) ;
 int la ;
 long strtol (int ,char**,int) ;

int
nat_SkinnyPort(struct cmdargs const *arg)
{
  char *end;
  long port;

  if (arg->argc == arg->argn) {
    LibAliasSetSkinnyPort(la, 0);
    return 0;
  }

  if (arg->argc != arg->argn + 1)
    return -1;

  port = strtol(arg->argv[arg->argn], &end, 10);
  if (*end != '\0' || port < 0)
    return -1;

  LibAliasSetSkinnyPort(la, port);

  return 0;
}
