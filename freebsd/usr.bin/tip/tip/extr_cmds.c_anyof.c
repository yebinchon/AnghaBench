
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ any (int,char*) ;

__attribute__((used)) static int
anyof(char *s1, char *s2)
{
 int c;

 while ((c = *s1++))
  if (any(c, s2))
   return(1);
 return(0);
}
