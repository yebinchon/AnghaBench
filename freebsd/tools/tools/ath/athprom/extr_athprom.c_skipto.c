
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int MAXID ;
 int bol ;
 int getc (int *) ;
 int lineno ;
 scalar_t__ strcasecmp (char*,char const*) ;
 int token (int *,char*,int,char*) ;
 int warnx (char*,char const*) ;

__attribute__((used)) static int
skipto(FILE *fd, const char *what)
{
 char id[MAXID];
 int c;

 for (;;) {
  c = getc(fd);
  if (c == EOF)
   goto bad;
  if (c == '.' && bol) {
   if (token(fd, id, MAXID, ".directive") == EOF)
    goto bad;
   if (strcasecmp(id, what) == 0)
    break;
   continue;
  }
  if (c == '\\') {
   c = getc(fd);
   if (c == EOF)
    goto bad;
  }
  bol = (c == '\n');
  if (bol)
   lineno++;
 }
 return 0;
bad:
 warnx("EOF with no matching .%s", what);
 return EOF;
}
