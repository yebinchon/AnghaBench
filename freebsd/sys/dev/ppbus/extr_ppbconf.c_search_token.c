
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UNKNOWN_LENGTH ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static char *
search_token(char *str, int slen, char *token)
{
 int tlen, i;



 if (slen == -1)

  slen = strlen(str);


 tlen = strlen(token);
 if (tlen == 0)
  return (str);

 for (i = 0; i <= slen-tlen; i++) {
  if (strncmp(str + i, token, tlen) == 0)
   return (&str[i]);
 }

 return (((void*)0));
}
