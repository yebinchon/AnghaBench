
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct datalink {int dummy; } ;
struct bundle {int dummy; } ;


 struct datalink* bundle_DatalinkLinkout (struct bundle*,struct datalink*) ;
 int datalink_Destroy (struct datalink*) ;

void
bundle_DatalinkRemove(struct bundle *bundle, struct datalink *dl)
{
  dl = bundle_DatalinkLinkout(bundle, dl);
  if (dl)
    datalink_Destroy(dl);
}
