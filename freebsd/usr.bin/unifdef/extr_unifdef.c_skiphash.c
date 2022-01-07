
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ LS_HASH ;
 scalar_t__ LS_START ;
 int MAXLINE ;
 int err (int,char*,int ) ;
 scalar_t__ ferror (int ) ;
 int * fgets (char const*,int ,int ) ;
 int filename ;
 int input ;
 int linenum ;
 scalar_t__ linestate ;
 char const* skipcomment (char const*) ;
 char const* skipline (char const*) ;
 char const* tline ;

__attribute__((used)) static const char *
skiphash(void)
{
 const char *cp;

 linenum++;
 if (fgets(tline, MAXLINE, input) == ((void*)0)) {
  if (ferror(input))
   err(2, "can't read %s", filename);
  else
   return (((void*)0));
 }
 cp = skipcomment(tline);
 if (linestate == LS_START && *cp == '#') {
  linestate = LS_HASH;
  return (skipcomment(cp + 1));
 } else if (*cp == '\0') {
  return (cp);
 } else {
  return (skipline(cp));
 }
}
