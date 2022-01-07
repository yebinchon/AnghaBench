
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct strbuf {int dummy; } ;
struct TYPE_2__ {int string; } ;


 int strbuf_addf (struct strbuf*,char*,int ,int,...) ;
 int strbuf_addstr (struct strbuf*,int ) ;
 scalar_t__ util_as_integral (TYPE_1__*) ;

__attribute__((used)) static void add_people_count(struct strbuf *out, struct string_list *people)
{
 if (people->nr == 1)
  strbuf_addstr(out, people->items[0].string);
 else if (people->nr == 2)
  strbuf_addf(out, "%s (%d) and %s (%d)",
       people->items[0].string,
       (int)util_as_integral(&people->items[0]),
       people->items[1].string,
       (int)util_as_integral(&people->items[1]));
 else if (people->nr)
  strbuf_addf(out, "%s (%d) and others",
       people->items[0].string,
       (int)util_as_integral(&people->items[0]));
}
