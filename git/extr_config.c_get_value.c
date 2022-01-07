
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int buf; } ;
typedef int (* config_fn_t ) (int ,char*,void*) ;
struct TYPE_2__ {int linenr; scalar_t__ eof; } ;


 TYPE_1__* cf ;
 int get_next_char () ;
 int iskeychar (int) ;
 char* parse_value () ;
 int strbuf_addch (struct strbuf*,int ) ;
 int tolower (int) ;

__attribute__((used)) static int get_value(config_fn_t fn, void *data, struct strbuf *name)
{
 int c;
 char *value;
 int ret;


 for (;;) {
  c = get_next_char();
  if (cf->eof)
   break;
  if (!iskeychar(c))
   break;
  strbuf_addch(name, tolower(c));
 }

 while (c == ' ' || c == '\t')
  c = get_next_char();

 value = ((void*)0);
 if (c != '\n') {
  if (c != '=')
   return -1;
  value = parse_value();
  if (!value)
   return -1;
 }





 cf->linenr--;
 ret = fn(name->buf, value, data);
 if (ret >= 0)
  cf->linenr++;
 return ret;
}
