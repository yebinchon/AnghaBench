
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;
typedef int dbuf ;


 int BUFSIZ ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int ferror (int ) ;
 int * fgets (char*,int,int ) ;
 int hashit (char*,int) ;
 char* linebuf ;
 int octdigit (char) ;
 int stdin ;

__attribute__((used)) static off_t
yankstr(char **cpp)
{
 char *cp = *cpp;
 int c, ch;
 char dbuf[BUFSIZ];
 char *dp = dbuf;
 char *tp;
 static char tmp[] = "b\bt\tr\rn\nf\f\\\\\"\"";

 while ((c = *cp++)) {
  if (dp == dbuf + sizeof(dbuf) - 3)
   errx(1, "message too long");
  switch (c) {

  case '"':
   cp++;
   goto out;

  case '\\':
   c = *cp++;
   if (c == 0)
    break;
   if (c == '\n') {
    if (fgets(linebuf, sizeof linebuf, stdin)
        == ((void*)0)) {
     if (ferror(stdin))
      err(3, "x.c");
     return(-1);
    }
    cp = linebuf;
    continue;
   }
   for (tp = tmp; (ch = *tp++); tp++)
    if (c == ch) {
     c = *tp;
     goto gotc;
    }
   if (!octdigit(c)) {
    *dp++ = '\\';
    break;
   }
   c -= '0';
   if (!octdigit(*cp))
    break;
   c <<= 3, c += *cp++ - '0';
   if (!octdigit(*cp))
    break;
   c <<= 3, c += *cp++ - '0';
   break;
  }
gotc:
  *dp++ = c;
 }
out:
 *cpp = --cp;
 *dp = 0;
 return (hashit(dbuf, 1));
}
