
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct match_attr {int dummy; } ;
struct attr_stack {scalar_t__ num_matches; struct match_attr** attrs; int alloc; } ;


 int ALLOC_GROW (struct match_attr**,scalar_t__,int ) ;
 struct match_attr* parse_attr_line (char const*,char const*,int,int) ;

__attribute__((used)) static void handle_attr_line(struct attr_stack *res,
        const char *line,
        const char *src,
        int lineno,
        int macro_ok)
{
 struct match_attr *a;

 a = parse_attr_line(line, src, lineno, macro_ok);
 if (!a)
  return;
 ALLOC_GROW(res->attrs, res->num_matches + 1, res->alloc);
 res->attrs[res->num_matches++] = a;
}
