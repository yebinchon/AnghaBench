
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CANY ;
 scalar_t__ CRCV ;
 scalar_t__ CSEND ;
 scalar_t__ cond ;
 int printf (char*,...) ;

int
ifcmd(char **argv)
{
 char *cp;

 if (cond != CANY) {
  printf("Illegal nested \"if\"\n");
  return (1);
 }
 cond = CANY;
 cp = argv[0];
 switch (*cp) {
 case 'r': case 'R':
  cond = CRCV;
  break;

 case 's': case 'S':
  cond = CSEND;
  break;

 default:
  printf("Unrecognized if-keyword: \"%s\"\n", cp);
  return (1);
 }
 return (0);
}
