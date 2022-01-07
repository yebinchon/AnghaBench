
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct string_list_item {struct push_info* util; } ;
struct remote {int push; scalar_t__ mirror; } ;
struct TYPE_4__ {int strdup_strings; } ;
struct ref_states {TYPE_2__ push; struct remote* remote; } ;
struct ref {int old_oid; int new_oid; int name; int force; TYPE_1__* peer_ref; struct ref* next; } ;
struct push_info {int status; int dest; int forced; } ;
struct TYPE_3__ {int name; int new_oid; } ;


 int MATCH_REFS_NONE ;
 int PUSH_STATUS_CREATE ;
 int PUSH_STATUS_DELETE ;
 int PUSH_STATUS_FASTFORWARD ;
 int PUSH_STATUS_OUTOFDATE ;
 int PUSH_STATUS_UPTODATE ;
 int abbrev_branch (int ) ;
 struct ref* copy_ref_list (struct ref const*) ;
 int free_refs (struct ref*) ;
 struct ref* get_local_heads () ;
 scalar_t__ has_object_file (int *) ;
 scalar_t__ is_null_oid (int *) ;
 int match_push_refs (struct ref*,struct ref**,int *,int ) ;
 int oidcpy (int *,int *) ;
 scalar_t__ oideq (int *,int *) ;
 scalar_t__ ref_newer (int *,int *) ;
 struct string_list_item* string_list_append (TYPE_2__*,int ) ;
 struct push_info* xcalloc (int,int) ;
 int xstrdup (int ) ;

__attribute__((used)) static int get_push_ref_states(const struct ref *remote_refs,
 struct ref_states *states)
{
 struct remote *remote = states->remote;
 struct ref *ref, *local_refs, *push_map;
 if (remote->mirror)
  return 0;

 local_refs = get_local_heads();
 push_map = copy_ref_list(remote_refs);

 match_push_refs(local_refs, &push_map, &remote->push, MATCH_REFS_NONE);

 states->push.strdup_strings = 1;
 for (ref = push_map; ref; ref = ref->next) {
  struct string_list_item *item;
  struct push_info *info;

  if (!ref->peer_ref)
   continue;
  oidcpy(&ref->new_oid, &ref->peer_ref->new_oid);

  item = string_list_append(&states->push,
       abbrev_branch(ref->peer_ref->name));
  item->util = xcalloc(1, sizeof(struct push_info));
  info = item->util;
  info->forced = ref->force;
  info->dest = xstrdup(abbrev_branch(ref->name));

  if (is_null_oid(&ref->new_oid)) {
   info->status = PUSH_STATUS_DELETE;
  } else if (oideq(&ref->old_oid, &ref->new_oid))
   info->status = PUSH_STATUS_UPTODATE;
  else if (is_null_oid(&ref->old_oid))
   info->status = PUSH_STATUS_CREATE;
  else if (has_object_file(&ref->old_oid) &&
    ref_newer(&ref->new_oid, &ref->old_oid))
   info->status = PUSH_STATUS_FASTFORWARD;
  else
   info->status = PUSH_STATUS_OUTOFDATE;
 }
 free_refs(local_refs);
 free_refs(push_map);
 return 0;
}
