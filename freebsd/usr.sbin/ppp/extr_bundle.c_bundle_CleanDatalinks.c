
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct datalink {scalar_t__ state; struct datalink* next; TYPE_1__* physical; } ;
struct bundle {struct datalink* links; } ;
struct TYPE_2__ {int type; } ;


 scalar_t__ DATALINK_CLOSED ;
 int PHYS_BACKGROUND ;
 int PHYS_DIRECT ;
 int PHYS_FOREGROUND ;
 int bundle_LinksRemoved (struct bundle*) ;
 struct datalink* datalink_Destroy (struct datalink*) ;

void
bundle_CleanDatalinks(struct bundle *bundle)
{
  struct datalink **dlp = &bundle->links;
  int found = 0;

  while (*dlp)
    if ((*dlp)->state == DATALINK_CLOSED &&
        (*dlp)->physical->type &
        (PHYS_DIRECT|PHYS_BACKGROUND|PHYS_FOREGROUND)) {
      *dlp = datalink_Destroy(*dlp);
      found++;
    } else
      dlp = &(*dlp)->next;

  if (found)
    bundle_LinksRemoved(bundle);
}
