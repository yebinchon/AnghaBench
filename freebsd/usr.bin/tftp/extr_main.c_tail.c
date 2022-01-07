
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char*,char) ;

__attribute__((used)) static char *
tail(char *filename)
{
 char *s;

 while (*filename) {
  s = strrchr(filename, '/');
  if (s == ((void*)0))
   break;
  if (s[1])
   return (s + 1);
  *s = '\0';
 }
 return (filename);
}
