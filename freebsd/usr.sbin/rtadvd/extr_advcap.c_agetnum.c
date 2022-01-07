
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 scalar_t__ isdigit (char) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int ) ;
 char* tbuf ;
 char* tskip (char*) ;

int64_t
tgetnum(char *id)
{
 int64_t i;
 int base;
 char *bp = tbuf;

 for (;;) {
  bp = tskip(bp);
  if (*bp == 0)
   return (-1);
  if (strncmp(bp, id, strlen(id)) != 0)
   continue;
  bp += strlen(id);
  if (*bp == '@')
   return (-1);
  if (*bp != '#')
   continue;
  bp++;
  base = 10;
  if (*bp == '0')
   base = 8;
  i = 0;
  while (isdigit(*bp))
   i *= base, i += *bp++ - '0';
  return (i);
 }
}
