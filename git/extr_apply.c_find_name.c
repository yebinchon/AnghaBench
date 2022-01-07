
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 char* find_name_common (struct strbuf*,char const*,char*,int,int *,int) ;
 char* find_name_gnu (struct strbuf*,char const*,int) ;

__attribute__((used)) static char *find_name(struct strbuf *root,
         const char *line,
         char *def,
         int p_value,
         int terminate)
{
 if (*line == '"') {
  char *name = find_name_gnu(root, line, p_value);
  if (name)
   return name;
 }

 return find_name_common(root, line, def, p_value, ((void*)0), terminate);
}
