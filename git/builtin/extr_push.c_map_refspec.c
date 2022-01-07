
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct TYPE_4__ {scalar_t__ nr; } ;
struct remote {TYPE_2__ push; } ;
struct refspec_item {scalar_t__ dst; scalar_t__ src; scalar_t__ force; } ;
struct ref {scalar_t__ name; } ;
struct branch {int merge_nr; TYPE_1__** merge; } ;
struct TYPE_3__ {scalar_t__ src; } ;


 scalar_t__ PUSH_DEFAULT_UPSTREAM ;
 struct strbuf STRBUF_INIT ;
 struct branch* branch_get (scalar_t__) ;
 int count_refspec_match (char const*,struct ref*,struct ref**) ;
 int memset (struct refspec_item*,int ,int) ;
 scalar_t__ push_default ;
 int query_refspecs (TYPE_2__*,struct refspec_item*) ;
 scalar_t__ starts_with (scalar_t__,char*) ;
 int strbuf_addf (struct strbuf*,char*,char const*,scalar_t__,...) ;
 char const* strbuf_detach (struct strbuf*,int *) ;

__attribute__((used)) static const char *map_refspec(const char *ref,
          struct remote *remote, struct ref *local_refs)
{
 struct ref *matched = ((void*)0);


 if (count_refspec_match(ref, local_refs, &matched) != 1)
  return ref;

 if (remote->push.nr) {
  struct refspec_item query;
  memset(&query, 0, sizeof(struct refspec_item));
  query.src = matched->name;
  if (!query_refspecs(&remote->push, &query) && query.dst) {
   struct strbuf buf = STRBUF_INIT;
   strbuf_addf(&buf, "%s%s:%s",
        query.force ? "+" : "",
        query.src, query.dst);
   return strbuf_detach(&buf, ((void*)0));
  }
 }

 if (push_default == PUSH_DEFAULT_UPSTREAM &&
     starts_with(matched->name, "refs/heads/")) {
  struct branch *branch = branch_get(matched->name + 11);
  if (branch->merge_nr == 1 && branch->merge[0]->src) {
   struct strbuf buf = STRBUF_INIT;
   strbuf_addf(&buf, "%s:%s",
        ref, branch->merge[0]->src);
   return strbuf_detach(&buf, ((void*)0));
  }
 }

 return ref;
}
