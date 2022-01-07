
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int ) ;
 char* tbuf ;
 char* tskip (char*) ;

int
tgetflag(char *id)
{
 char *bp = tbuf;

 for (;;) {
  bp = tskip(bp);
  if (!*bp)
   return (0);
  if (strncmp(bp, id, strlen(id)) == 0) {
   bp += strlen(id);
   if (!*bp || *bp == ':')
    return (1);
   else if (*bp == '@')
    return (0);
  }
 }
}
