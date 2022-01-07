
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct transport {TYPE_2__* remote; int url; TYPE_1__* smart_options; } ;
struct ref {int dummy; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int connectivity_checked; } ;


 int store_updated_refs (int ,int ,int,struct ref*) ;
 int the_repository ;
 int trace2_region_enter (char*,char*,int ) ;
 int trace2_region_leave (char*,char*,int ) ;
 int transport_unlock_pack (struct transport*) ;

__attribute__((used)) static int consume_refs(struct transport *transport, struct ref *ref_map)
{
 int connectivity_checked = transport->smart_options
  ? transport->smart_options->connectivity_checked : 0;
 int ret;
 trace2_region_enter("fetch", "consume_refs", the_repository);
 ret = store_updated_refs(transport->url,
     transport->remote->name,
     connectivity_checked,
     ref_map);
 transport_unlock_pack(transport);
 trace2_region_leave("fetch", "consume_refs", the_repository);
 return ret;
}
