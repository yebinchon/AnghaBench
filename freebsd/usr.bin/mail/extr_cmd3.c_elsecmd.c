
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cond ;
 int printf (char*) ;

int
elsecmd(void)
{

 switch (cond) {
 case 130:
  printf("\"Else\" without matching \"if\"\n");
  return (1);

 case 128:
  cond = 129;
  break;

 case 129:
  cond = 128;
  break;

 default:
  printf("Mail's idea of conditions is screwed up\n");
  cond = 130;
  break;
 }
 return (0);
}
