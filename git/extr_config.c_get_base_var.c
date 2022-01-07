
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct TYPE_2__ {int subsection_case_sensitive; scalar_t__ eof; } ;


 TYPE_1__* cf ;
 int get_extended_base_var (struct strbuf*,int) ;
 int get_next_char () ;
 int iskeychar (int) ;
 scalar_t__ isspace (int) ;
 int strbuf_addch (struct strbuf*,int ) ;
 int tolower (int) ;

__attribute__((used)) static int get_base_var(struct strbuf *name)
{
 cf->subsection_case_sensitive = 1;
 for (;;) {
  int c = get_next_char();
  if (cf->eof)
   return -1;
  if (c == ']')
   return 0;
  if (isspace(c))
   return get_extended_base_var(name, c);
  if (!iskeychar(c) && c != '.')
   return -1;
  strbuf_addch(name, tolower(c));
 }
}
