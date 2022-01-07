
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct transport {int dummy; } ;
struct ref_states {int queried; int tracked; TYPE_1__* remote; } ;
struct ref {int dummy; } ;
struct TYPE_3__ {scalar_t__ url_nr; int ** url; } ;


 int GET_HEAD_NAMES ;
 int GET_PUSH_REF_STATES ;
 int GET_REF_STATES ;
 int _ (char*) ;
 int append_ref_to_tracked_list ;
 int error (int ,char const*) ;
 int for_each_ref (int ,struct ref_states*) ;
 int get_head_names (struct ref const*,struct ref_states*) ;
 int get_push_ref_states (struct ref const*,struct ref_states*) ;
 int get_push_ref_states_noquery (struct ref_states*) ;
 int get_ref_states (struct ref const*,struct ref_states*) ;
 int read_branches () ;
 TYPE_1__* remote_get (char const*) ;
 int string_list_sort (int *) ;
 int transport_disconnect (struct transport*) ;
 struct transport* transport_get (TYPE_1__*,int *) ;
 struct ref* transport_get_remote_refs (struct transport*,int *) ;

__attribute__((used)) static int get_remote_ref_states(const char *name,
     struct ref_states *states,
     int query)
{
 struct transport *transport;
 const struct ref *remote_refs;

 states->remote = remote_get(name);
 if (!states->remote)
  return error(_("No such remote: '%s'"), name);

 read_branches();

 if (query) {
  transport = transport_get(states->remote, states->remote->url_nr > 0 ?
   states->remote->url[0] : ((void*)0));
  remote_refs = transport_get_remote_refs(transport, ((void*)0));
  transport_disconnect(transport);

  states->queried = 1;
  if (query & GET_REF_STATES)
   get_ref_states(remote_refs, states);
  if (query & GET_HEAD_NAMES)
   get_head_names(remote_refs, states);
  if (query & GET_PUSH_REF_STATES)
   get_push_ref_states(remote_refs, states);
 } else {
  for_each_ref(append_ref_to_tracked_list, states);
  string_list_sort(&states->tracked);
  get_push_ref_states_noquery(states);
 }

 return 0;
}
