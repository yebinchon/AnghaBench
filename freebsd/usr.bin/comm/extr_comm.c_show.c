
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int FILE ;


 int err (int,char*,char const*) ;
 scalar_t__ ferror (int *) ;
 int getline (char**,size_t*,int *) ;
 int printf (char*,char const*,char*) ;

__attribute__((used)) static void
show(FILE *fp, const char *fn, const char *offset, char **bufp, size_t *buflenp)
{
 ssize_t n;

 do {
  (void)printf("%s%s\n", offset, *bufp);
  if ((n = getline(bufp, buflenp, fp)) < 0)
   break;
  if (n > 0 && (*bufp)[n - 1] == '\n')
   (*bufp)[n - 1] = '\0';
 } while (1);
 if (ferror(fp))
  err(1, "%s", fn);
}
