
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urlmatch_current_candidate_value {int value_is_null; int value; } ;
struct string_list_item {struct urlmatch_current_candidate_value* util; } ;
struct string_list {int dummy; } ;


 int strbuf_addstr (int *,char const*) ;
 int strbuf_init (int *,int ) ;
 int strbuf_reset (int *) ;
 struct string_list_item* string_list_insert (struct string_list*,char const*) ;
 struct urlmatch_current_candidate_value* xmalloc (int) ;

__attribute__((used)) static int urlmatch_collect_fn(const char *var, const char *value, void *cb)
{
 struct string_list *values = cb;
 struct string_list_item *item = string_list_insert(values, var);
 struct urlmatch_current_candidate_value *matched = item->util;

 if (!matched) {
  matched = xmalloc(sizeof(*matched));
  strbuf_init(&matched->value, 0);
  item->util = matched;
 } else {
  strbuf_reset(&matched->value);
 }

 if (value) {
  strbuf_addstr(&matched->value, value);
  matched->value_is_null = 0;
 } else {
  matched->value_is_null = 1;
 }
 return 0;
}
