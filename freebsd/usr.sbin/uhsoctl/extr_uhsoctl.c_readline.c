
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int read (int,char*,int) ;

__attribute__((used)) static int
readline(int fd, char *buf, size_t bufsz)
{
 int n = 0, pos = 0;
 char *p = buf;

 for (;;) {
  n = read(fd, p, 1);
  if (n <= 0)
   break;
  pos++;
  if (pos >= (bufsz - 1))
   break;
  if (*p++ == '\n')
   break;
 }
 *p = '\0';
 return (n <= 0 ? n : pos);
}
