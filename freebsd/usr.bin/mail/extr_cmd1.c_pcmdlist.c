
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd {char* c_name; } ;


 int printf (char*,...) ;
 int strlen (char*) ;

int
pcmdlist(void)
{
 extern const struct cmd cmdtab[];
 const struct cmd *cp;
 int cc;

 printf("Commands are:\n");
 for (cc = 0, cp = cmdtab; cp->c_name != ((void*)0); cp++) {
  cc += strlen(cp->c_name) + 2;
  if (cc > 72) {
   printf("\n");
   cc = strlen(cp->c_name) + 2;
  }
  if ((cp+1)->c_name != ((void*)0))
   printf("%s, ", cp->c_name);
  else
   printf("%s\n", cp->c_name);
 }
 return (0);
}
