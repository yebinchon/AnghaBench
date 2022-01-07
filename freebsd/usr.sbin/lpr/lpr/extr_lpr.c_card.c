
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int BUFSIZ ;
 int tfd ;
 int write (int ,char*,size_t) ;

__attribute__((used)) static void
card(int c, const char *p2)
{
 char buf[BUFSIZ];
 register char *p1 = buf;
 size_t len = 2;

 *p1++ = c;
 while ((c = *p2++) != '\0' && len < sizeof(buf)) {
  *p1++ = (c == '\n') ? ' ' : c;
  len++;
 }
 *p1++ = '\n';
 write(tfd, buf, len);
}
