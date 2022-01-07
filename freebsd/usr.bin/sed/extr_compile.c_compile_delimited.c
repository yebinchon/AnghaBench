
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* compile_ccl (char**,char*) ;
 int errx (int,char*,int ,int ) ;
 int fname ;
 int linenum ;

__attribute__((used)) static char *
compile_delimited(char *p, char *d, int is_tr)
{
 char c;

 c = *p++;
 if (c == '\0')
  return (((void*)0));
 else if (c == '\\')
  errx(1, "%lu: %s: \\ can not be used as a string delimiter",
    linenum, fname);
 else if (c == '\n')
  errx(1, "%lu: %s: newline can not be used as a string delimiter",
    linenum, fname);
 while (*p) {
  if (*p == '[' && *p != c) {
   if ((d = compile_ccl(&p, d)) == ((void*)0))
    errx(1, "%lu: %s: unbalanced brackets ([])", linenum, fname);
   continue;
  } else if (*p == '\\' && p[1] == '[') {
   *d++ = *p++;
  } else if (*p == '\\' && p[1] == c)
   p++;
  else if (*p == '\\' && p[1] == 'n') {
   *d++ = '\n';
   p += 2;
   continue;
  } else if (*p == '\\' && p[1] == '\\') {
   if (is_tr)
    p++;
   else
    *d++ = *p++;
  } else if (*p == c) {
   *d = '\0';
   return (p + 1);
  }
  *d++ = *p++;
 }
 return (((void*)0));
}
