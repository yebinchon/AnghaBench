
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list_item {int * util; int string; } ;
struct patch {char* new_name; char* old_name; } ;
struct TYPE_2__ {int nr; struct string_list_item* items; } ;
struct apply_state {int has_include; TYPE_1__ limit_by_name; scalar_t__* prefix; } ;


 int skip_prefix (char const*,scalar_t__*,char const**) ;
 int wildmatch (int ,char const*,int ) ;

__attribute__((used)) static int use_patch(struct apply_state *state, struct patch *p)
{
 const char *pathname = p->new_name ? p->new_name : p->old_name;
 int i;


 if (state->prefix && *state->prefix) {
  const char *rest;
  if (!skip_prefix(pathname, state->prefix, &rest) || !*rest)
   return 0;
 }


 for (i = 0; i < state->limit_by_name.nr; i++) {
  struct string_list_item *it = &state->limit_by_name.items[i];
  if (!wildmatch(it->string, pathname, 0))
   return (it->util != ((void*)0));
 }






 return !state->has_include;
}
