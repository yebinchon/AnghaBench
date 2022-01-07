
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalnum (unsigned char) ;
 char* strdup (char*) ;

char *genident(char *str)
{
 char *n, *s, *d;
 if ((n = strdup(str)) == ((void*)0))
  return ((void*)0);
 for (d = s = n; *s != '\0'; s++) {
  if (*s == '-')
   *d++ = '_';
  else if (*s == '_' || isalnum((unsigned char)*s))
   *d++ = *s;
 }
 *d = '\0';
 return n;
}
