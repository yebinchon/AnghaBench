
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct TYPE_2__ {int linenr; scalar_t__ subsection_case_sensitive; } ;


 TYPE_1__* cf ;
 char get_next_char () ;
 scalar_t__ isspace (int) ;
 int strbuf_addch (struct strbuf*,int) ;

__attribute__((used)) static int get_extended_base_var(struct strbuf *name, int c)
{
 cf->subsection_case_sensitive = 0;
 do {
  if (c == '\n')
   goto error_incomplete_line;
  c = get_next_char();
 } while (isspace(c));


 if (c != '"')
  return -1;
 strbuf_addch(name, '.');

 for (;;) {
  int c = get_next_char();
  if (c == '\n')
   goto error_incomplete_line;
  if (c == '"')
   break;
  if (c == '\\') {
   c = get_next_char();
   if (c == '\n')
    goto error_incomplete_line;
  }
  strbuf_addch(name, c);
 }


 if (get_next_char() != ']')
  return -1;
 return 0;
error_incomplete_line:
 cf->linenr--;
 return -1;
}
