
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CANY ;
 scalar_t__ cond ;
 int printf (char*) ;

int
endifcmd(void)
{

 if (cond == CANY) {
  printf("\"Endif\" without matching \"if\"\n");
  return (1);
 }
 cond = CANY;
 return (0);
}
