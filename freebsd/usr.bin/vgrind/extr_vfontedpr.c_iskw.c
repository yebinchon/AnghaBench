
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STRNCMP (char*,char*,int) ;
 int isidchr (char) ;
 char** l_keywds ;

__attribute__((used)) static int
iskw(register char *s)
{
 register char **ss = l_keywds;
 register int i = 1;
 register char *cp = s;

 while (++cp, isidchr(*cp))
  i++;
 while ((cp = *ss++))
  if (!STRNCMP(s,cp,i) && !isidchr(cp[i]))
   return (i);
 return (0);
}
