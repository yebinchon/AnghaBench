
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFSIZ ;
 scalar_t__ MAXHOP ;
 int STDERR_FILENO ;
 int conffile ;
 int getent (char*,char*,int ) ;
 scalar_t__ hopcount ;
 int strcpy (char*,char*) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char*) ;
 char* tbuf ;
 int write (int ,char*,int) ;

int
tnchktc(void)
{
 char *p, *q;
 char tcname[16];
 char tcbuf[BUFSIZ];
 char *holdtbuf = tbuf;
 int l;

 p = tbuf + strlen(tbuf) - 2;
 while (*--p != ':')
  if (p < tbuf) {
   write(STDERR_FILENO, "Bad remcap entry\n", 18);
   return (0);
  }
 p++;

 if (p[0] != 't' || p[1] != 'c')
  return (1);
 strlcpy(tcname, p + 3, sizeof tcname);
 q = tcname;
 while (*q && *q != ':')
  q++;
 *q = 0;
 if (++hopcount > MAXHOP) {
  write(STDERR_FILENO, "Infinite tc= loop\n", 18);
  return (0);
 }
 if (getent(tcbuf, tcname, conffile) != 1) {
  return (0);
 }
 for (q = tcbuf; *q++ != ':'; )
  ;
 l = p - holdtbuf + strlen(q);
 if (l > BUFSIZ) {
  write(STDERR_FILENO, "Remcap entry too long\n", 23);
  q[BUFSIZ - (p-holdtbuf)] = 0;
 }
 strcpy(p, q);
 tbuf = holdtbuf;
 return (1);
}
