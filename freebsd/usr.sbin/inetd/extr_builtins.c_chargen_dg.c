
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct servtab {int dummy; } ;
typedef int ss ;
typedef int socklen_t ;


 int LINESIZ ;
 scalar_t__ check_loop (struct sockaddr*,struct servtab*) ;
 char* endring ;
 int initring () ;
 int memmove (char*,char*,int) ;
 scalar_t__ recvfrom (int,char*,int,int ,struct sockaddr*,int*) ;
 char* ring ;
 int sendto (int,char*,int,int ,struct sockaddr*,int) ;

__attribute__((used)) static void
chargen_dg(int s, struct servtab *sep)
{
 struct sockaddr_storage ss;
 static char *rs;
 int len;
 socklen_t size;
 char text[LINESIZ+2];

 if (endring == 0) {
  initring();
  rs = ring;
 }

 size = sizeof(ss);
 if (recvfrom(s, text, sizeof(text), 0,
       (struct sockaddr *)&ss, &size) < 0)
  return;

 if (check_loop((struct sockaddr *)&ss, sep))
  return;

 if ((len = endring - rs) >= LINESIZ)
  memmove(text, rs, LINESIZ);
 else {
  memmove(text, rs, len);
  memmove(text + len, ring, LINESIZ - len);
 }
 if (++rs == endring)
  rs = ring;
 text[LINESIZ] = '\r';
 text[LINESIZ + 1] = '\n';
 (void) sendto(s, text, sizeof(text), 0, (struct sockaddr *)&ss, size);
}
