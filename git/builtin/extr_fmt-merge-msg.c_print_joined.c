
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct strbuf {int dummy; } ;
struct TYPE_2__ {int string; } ;


 int strbuf_addf (struct strbuf*,char*,char const*,...) ;
 int strbuf_addstr (struct strbuf*,char const*) ;

__attribute__((used)) static void print_joined(const char *singular, const char *plural,
  struct string_list *list, struct strbuf *out)
{
 if (list->nr == 0)
  return;
 if (list->nr == 1) {
  strbuf_addf(out, "%s%s", singular, list->items[0].string);
 } else {
  int i;
  strbuf_addstr(out, plural);
  for (i = 0; i < list->nr - 1; i++)
   strbuf_addf(out, "%s%s", i > 0 ? ", " : "",
        list->items[i].string);
  strbuf_addf(out, " and %s", list->items[list->nr - 1].string);
 }
}
