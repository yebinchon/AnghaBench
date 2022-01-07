
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd {int * c_name; } ;


 struct cmd* cmdtab ;
 scalar_t__ isprefix (char*,int *) ;

const struct cmd *
lex(char word[])
{
 const struct cmd *cp;
 if (*word == '#')
     *(word+1) = '\0';


 for (cp = &cmdtab[0]; cp->c_name != ((void*)0); cp++)
  if (isprefix(word, cp->c_name))
   return (cp);
 return (((void*)0));
}
