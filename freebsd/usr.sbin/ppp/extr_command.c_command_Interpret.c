
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXARGS ;
 int MakeArgs (char*,char**,int ,int ) ;
 int PARSE_REDUCE ;
 int strcspn (char*,char*) ;

int
command_Interpret(char *buff, int nb, char *argv[MAXARGS])
{
  char *cp;

  if (nb > 0) {
    cp = buff + strcspn(buff, "\r\n");
    if (cp)
      *cp = '\0';
    return MakeArgs(buff, argv, MAXARGS, PARSE_REDUCE);
  }
  return 0;
}
