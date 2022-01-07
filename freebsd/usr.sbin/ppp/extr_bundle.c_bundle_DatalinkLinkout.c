
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct datalink {struct datalink* next; } ;
struct bundle {struct datalink* links; } ;


 int bundle_LinksRemoved (struct bundle*) ;

__attribute__((used)) static struct datalink *
bundle_DatalinkLinkout(struct bundle *bundle, struct datalink *dl)
{
  struct datalink **dlp;

  for (dlp = &bundle->links; *dlp; dlp = &(*dlp)->next)
    if (*dlp == dl) {
      *dlp = dl->next;
      dl->next = ((void*)0);
      bundle_LinksRemoved(bundle);
      return dl;
    }

  return ((void*)0);
}
