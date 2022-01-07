
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* calloc (int,int) ;
 scalar_t__ isascii (unsigned char) ;
 int isu8cont (char) ;

char *
utoa(char *u)
{
 int len, i, j;
 char *str;


 for (len = 0, i = 0; u[i] != '\0'; i++)
  if (!isu8cont(u[i]))
   len++;

 if ((str = calloc(len + 1, sizeof(char))) == ((void*)0))
  return ((void*)0);


 for (i = 0, j = 0; u[i] != '\0'; i++)
  if (!isu8cont(u[i]))
   str[j++] = isascii((unsigned char)u[i]) ? u[i] : '?';

 return str;
}
