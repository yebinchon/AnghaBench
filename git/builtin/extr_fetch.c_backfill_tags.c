
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct transport {int remote; int cannot_reuse; } ;
struct ref {int dummy; } ;
struct TYPE_2__ {scalar_t__ nr; } ;


 int TRANS_OPT_DEEPEN_RELATIVE ;
 int TRANS_OPT_DEPTH ;
 int TRANS_OPT_FOLLOWTAGS ;
 int consume_refs (struct transport*,struct ref*) ;
 TYPE_1__ deepen_not ;
 scalar_t__ deepen_since ;
 int fetch_refs (struct transport*,struct ref*) ;
 struct transport* gsecondary ;
 struct transport* prepare_transport (int ,int ) ;
 int transport_disconnect (struct transport*) ;
 int transport_set_option (struct transport*,int ,char*) ;

__attribute__((used)) static void backfill_tags(struct transport *transport, struct ref *ref_map)
{
 int cannot_reuse;
 cannot_reuse = transport->cannot_reuse ||
  deepen_since || deepen_not.nr;
 if (cannot_reuse) {
  gsecondary = prepare_transport(transport->remote, 0);
  transport = gsecondary;
 }

 transport_set_option(transport, TRANS_OPT_FOLLOWTAGS, ((void*)0));
 transport_set_option(transport, TRANS_OPT_DEPTH, "0");
 transport_set_option(transport, TRANS_OPT_DEEPEN_RELATIVE, ((void*)0));
 if (!fetch_refs(transport, ref_map))
  consume_refs(transport, ref_map);

 if (gsecondary) {
  transport_disconnect(gsecondary);
  gsecondary = ((void*)0);
 }
}
