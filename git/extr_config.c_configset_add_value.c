
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct string_list_item {struct key_value_info* util; } ;
struct key_value_info {int linenr; int scope; int origin_type; int * filename; } ;
struct configset_list_item {scalar_t__ value_index; struct config_set_element* e; } ;
struct TYPE_6__ {scalar_t__ nr; } ;
struct config_set_element {TYPE_2__ value_list; int ent; int key; } ;
struct TYPE_5__ {scalar_t__ nr; struct configset_list_item* items; int alloc; } ;
struct config_set {TYPE_1__ list; int config_hash; } ;
struct TYPE_7__ {int linenr; int origin_type; scalar_t__ name; } ;


 int ALLOC_GROW (struct configset_list_item*,scalar_t__,int ) ;
 int BUG (char*) ;
 int CONFIG_ORIGIN_CMDLINE ;
 TYPE_4__* cf ;
 struct config_set_element* configset_find_element (struct config_set*,char const*) ;
 int current_parsing_scope ;
 int hashmap_add (int *,int *) ;
 int hashmap_entry_init (int *,int ) ;
 int strhash (char const*) ;
 struct string_list_item* string_list_append_nodup (TYPE_2__*,int ) ;
 int string_list_init (TYPE_2__*,int) ;
 int * strintern (scalar_t__) ;
 void* xmalloc (int) ;
 int xstrdup (char const*) ;
 int xstrdup_or_null (char const*) ;

__attribute__((used)) static int configset_add_value(struct config_set *cs, const char *key, const char *value)
{
 struct config_set_element *e;
 struct string_list_item *si;
 struct configset_list_item *l_item;
 struct key_value_info *kv_info = xmalloc(sizeof(*kv_info));

 e = configset_find_element(cs, key);




 if (!e) {
  e = xmalloc(sizeof(*e));
  hashmap_entry_init(&e->ent, strhash(key));
  e->key = xstrdup(key);
  string_list_init(&e->value_list, 1);
  hashmap_add(&cs->config_hash, &e->ent);
 }
 si = string_list_append_nodup(&e->value_list, xstrdup_or_null(value));

 ALLOC_GROW(cs->list.items, cs->list.nr + 1, cs->list.alloc);
 l_item = &cs->list.items[cs->list.nr++];
 l_item->e = e;
 l_item->value_index = e->value_list.nr - 1;

 if (!cf)
  BUG("configset_add_value has no source");
 if (cf->name) {
  kv_info->filename = strintern(cf->name);
  kv_info->linenr = cf->linenr;
  kv_info->origin_type = cf->origin_type;
 } else {

  kv_info->filename = ((void*)0);
  kv_info->linenr = -1;
  kv_info->origin_type = CONFIG_ORIGIN_CMDLINE;
 }
 kv_info->scope = current_parsing_scope;
 si->util = kv_info;

 return 0;
}
