
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isdigit (unsigned char) ;

__attribute__((used)) static int
isonlydigits(char *s, int nostar)
{
 int i;
 for (i = 0; s[i] != '\0'; i++) {
  if (nostar == 0 && s[i] == '*' && s[i + 1] == '\0')
   return 1;
  if (!isdigit((unsigned char)s[i]))
   return (0);
 }
 return (1);
}
