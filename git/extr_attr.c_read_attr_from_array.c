
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attr_stack {int dummy; } ;


 int handle_attr_line (struct attr_stack*,char const*,char*,int,int) ;
 struct attr_stack* xcalloc (int,int) ;

__attribute__((used)) static struct attr_stack *read_attr_from_array(const char **list)
{
 struct attr_stack *res;
 const char *line;
 int lineno = 0;

 res = xcalloc(1, sizeof(*res));
 while ((line = *(list++)) != ((void*)0))
  handle_attr_line(res, line, "[builtin]", ++lineno, 1);
 return res;
}
