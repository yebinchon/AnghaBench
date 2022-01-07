
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
struct servtab {int se_service; } ;


 int LINESIZ ;
 char* endring ;
 int exit (int ) ;
 int inetd_setproctitle (int ,int) ;
 int initring () ;
 int memmove (char*,char*,int) ;
 char* ring ;
 int write (int,char*,int) ;

__attribute__((used)) static void
chargen_stream(int s, struct servtab *sep)
{
 int len;
 char *rs, text[LINESIZ+2];

 inetd_setproctitle(sep->se_service, s);

 if (!endring)
  initring();

 text[LINESIZ] = '\r';
 text[LINESIZ + 1] = '\n';
 for (rs = ring;;) {
  if ((len = endring - rs) >= LINESIZ)
   memmove(text, rs, LINESIZ);
  else {
   memmove(text, rs, len);
   memmove(text + len, ring, LINESIZ - len);
  }
  if (++rs == endring)
   rs = ring;
  if (write(s, text, sizeof(text)) != sizeof(text))
   break;
 }
 exit(0);
}
