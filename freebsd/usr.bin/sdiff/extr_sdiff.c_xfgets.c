
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int FILE ;


 int clearerr (int *) ;
 int err (int,char*) ;
 scalar_t__ ferror (int *) ;
 int getline (char**,size_t*,int *) ;

__attribute__((used)) static char *
xfgets(FILE *file)
{
 size_t linecap;
 ssize_t l;
 char *s;

 clearerr(file);
 linecap = 0;
 s = ((void*)0);

 if ((l = getline(&s, &linecap, file)) == -1) {
  if (ferror(file))
   err(2, "error reading file");
  return (((void*)0));
 }

 if (s[l-1] == '\n')
  s[l-1] = '\0';

 return (s);
}
