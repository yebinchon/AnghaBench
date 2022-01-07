
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct transport {scalar_t__ smart_options; int family; } ;
struct remote {int dummy; } ;
struct TYPE_7__ {scalar_t__ nr; } ;
struct TYPE_6__ {scalar_t__ choice; } ;
struct TYPE_5__ {scalar_t__ nr; } ;


 int TRANS_OPT_DEEPEN_NOT ;
 int TRANS_OPT_DEEPEN_RELATIVE ;
 int TRANS_OPT_DEEPEN_SINCE ;
 int TRANS_OPT_DEPTH ;
 int TRANS_OPT_FROM_PROMISOR ;
 int TRANS_OPT_KEEP ;
 int TRANS_OPT_LIST_OBJECTS_FILTER ;
 int TRANS_OPT_UPDATE_SHALLOW ;
 int TRANS_OPT_UPLOADPACK ;
 int add_negotiation_tips (scalar_t__) ;
 TYPE_4__ deepen_not ;
 scalar_t__ deepen_relative ;
 char* deepen_since ;
 char* depth ;
 char* expand_list_objects_filter_spec (TYPE_2__*) ;
 int family ;
 TYPE_2__ filter_options ;
 scalar_t__ keep ;
 TYPE_1__ negotiation_tip ;
 int progress ;
 int set_option (struct transport*,int ,char const*) ;
 struct transport* transport_get (struct remote*,int *) ;
 int transport_set_verbosity (struct transport*,int ,int ) ;
 scalar_t__ update_shallow ;
 char* upload_pack ;
 int verbosity ;
 int warning (char*) ;

__attribute__((used)) static struct transport *prepare_transport(struct remote *remote, int deepen)
{
 struct transport *transport;

 transport = transport_get(remote, ((void*)0));
 transport_set_verbosity(transport, verbosity, progress);
 transport->family = family;
 if (upload_pack)
  set_option(transport, TRANS_OPT_UPLOADPACK, upload_pack);
 if (keep)
  set_option(transport, TRANS_OPT_KEEP, "yes");
 if (depth)
  set_option(transport, TRANS_OPT_DEPTH, depth);
 if (deepen && deepen_since)
  set_option(transport, TRANS_OPT_DEEPEN_SINCE, deepen_since);
 if (deepen && deepen_not.nr)
  set_option(transport, TRANS_OPT_DEEPEN_NOT,
      (const char *)&deepen_not);
 if (deepen_relative)
  set_option(transport, TRANS_OPT_DEEPEN_RELATIVE, "yes");
 if (update_shallow)
  set_option(transport, TRANS_OPT_UPDATE_SHALLOW, "yes");
 if (filter_options.choice) {
  const char *spec =
   expand_list_objects_filter_spec(&filter_options);
  set_option(transport, TRANS_OPT_LIST_OBJECTS_FILTER, spec);
  set_option(transport, TRANS_OPT_FROM_PROMISOR, "1");
 }
 if (negotiation_tip.nr) {
  if (transport->smart_options)
   add_negotiation_tips(transport->smart_options);
  else
   warning("Ignoring --negotiation-tip because the protocol does not support it.");
 }
 return transport;
}
