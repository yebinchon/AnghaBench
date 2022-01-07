
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct datalink {struct datalink* next; } ;
struct TYPE_2__ {int mp; } ;
struct bundle {TYPE_1__ ncp; struct datalink* links; } ;


 int bundle_LinkAdded (struct bundle*,struct datalink*) ;
 int mp_CheckAutoloadTimer (int *) ;

__attribute__((used)) static void
bundle_DatalinkLinkin(struct bundle *bundle, struct datalink *dl)
{
  struct datalink **dlp = &bundle->links;

  while (*dlp)
    dlp = &(*dlp)->next;

  *dlp = dl;
  dl->next = ((void*)0);

  bundle_LinkAdded(bundle, dl);
  mp_CheckAutoloadTimer(&bundle->ncp.mp);
}
