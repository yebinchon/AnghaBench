
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ fgets (char*,int,int *) ;
 int strlen (char*) ;

__attribute__((used)) static int
xgets(char *buf, int buflen, FILE *fp)
{
  int len, n;

  n = 0;
  while (fgets(buf, buflen-1, fp)) {
    n++;
    buf[buflen-1] = '\0';
    len = strlen(buf);
    while (len && (buf[len-1] == '\n' || buf[len-1] == '\r'))
      buf[--len] = '\0';
    if (len && buf[len-1] == '\\') {
      buf += len - 1;
      buflen -= len - 1;
      if (!buflen)
        break;
    } else
      break;
  }
  return n;
}
