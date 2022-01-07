
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int errno ;
 scalar_t__ ferror (int *) ;
 int getc (int *) ;
 int * strchr (char const*,int) ;
 int ungetc (int,int *) ;

__attribute__((used)) static int
skip_to(FILE *fp, const char *cs)
{
 int c;

 c = getc(fp);
 while (c != EOF && strchr(cs, c) == ((void*)0))
  c = getc(fp);
 if (c != EOF) {
  ungetc(c, fp);
  return (0);
 }
 return (ferror(fp) ? errno : -1);
}
