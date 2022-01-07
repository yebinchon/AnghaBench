
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 scalar_t__ bol ;
 int getc (int *) ;
 int isalnum (int) ;
 int lineno ;
 int ungetc (int,int *) ;
 int warnx (char*,int ,char const*) ;

__attribute__((used)) static int
token(FILE *fd, char id[], int maxid, const char *what)
{
 int c, i;

 i = 0;
 for (;;) {
  c = getc(fd);
  if (c == EOF)
   return EOF;
  if (!isalnum(c) && c != '_') {
   ungetc(c, fd);
   break;
  }
  if (i == maxid-1) {
   warnx("line %d, %s too long", lineno, what);
   break;
  }
  id[i++] = c;
 }
 id[i] = '\0';
 if (i != 0)
  bol = 0;
 return i;
}
