
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attr_stack {int dummy; } ;
typedef int buf ;
typedef int FILE ;


 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen_or_warn (char const*,char*) ;
 int handle_attr_line (struct attr_stack*,char*,char const*,int,int) ;
 int skip_utf8_bom (char**,int ) ;
 int strlen (char*) ;
 struct attr_stack* xcalloc (int,int) ;

__attribute__((used)) static struct attr_stack *read_attr_from_file(const char *path, int macro_ok)
{
 FILE *fp = fopen_or_warn(path, "r");
 struct attr_stack *res;
 char buf[2048];
 int lineno = 0;

 if (!fp)
  return ((void*)0);
 res = xcalloc(1, sizeof(*res));
 while (fgets(buf, sizeof(buf), fp)) {
  char *bufp = buf;
  if (!lineno)
   skip_utf8_bom(&bufp, strlen(bufp));
  handle_attr_line(res, bufp, path, ++lineno, macro_ok);
 }
 fclose(fp);
 return res;
}
