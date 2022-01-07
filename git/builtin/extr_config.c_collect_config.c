
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf_list {int nr; int * items; int alloc; } ;


 int ALLOC_GROW (int *,int,int ) ;
 int do_not_match ;
 int format_config (int *,char const*,char const*) ;
 int key ;
 int * key_regexp ;
 scalar_t__ regexec (int *,char const*,int ,int *,int ) ;
 int * regexp ;
 int strbuf_init (int *,int ) ;
 scalar_t__ strcmp (char const*,int ) ;
 scalar_t__ use_key_regexp ;

__attribute__((used)) static int collect_config(const char *key_, const char *value_, void *cb)
{
 struct strbuf_list *values = cb;

 if (!use_key_regexp && strcmp(key_, key))
  return 0;
 if (use_key_regexp && regexec(key_regexp, key_, 0, ((void*)0), 0))
  return 0;
 if (regexp != ((void*)0) &&
     (do_not_match ^ !!regexec(regexp, (value_?value_:""), 0, ((void*)0), 0)))
  return 0;

 ALLOC_GROW(values->items, values->nr + 1, values->alloc);
 strbuf_init(&values->items[values->nr], 0);

 return format_config(&values->items[values->nr++], key_, value_);
}
