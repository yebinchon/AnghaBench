
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ifmd_flags; } ;
struct mibif {TYPE_2__ mib; int * physaddr; int name; } ;
struct TYPE_3__ {int octet; } ;
struct bridge_if {int entry_age; int num_ports; int if_status; TYPE_1__ br_addr; int bif_name; } ;


 int ETHER_ADDR_LEN ;
 int IFF_RUNNING ;
 int RowStatus_active ;
 int RowStatus_notInService ;
 int bcopy (int *,int ,int ) ;
 int bridge_get_basemac (int ,int ,int ) ;
 int bridge_getinfo_bif (struct bridge_if*) ;
 int bridge_new_root (struct bridge_if*) ;
 int bridge_remove_bif (struct bridge_if*) ;
 int bridge_top_change (struct bridge_if*) ;
 int bridge_update_memif (struct bridge_if*) ;
 struct mibif* mib_first_if () ;
 struct mibif* mib_next_if (struct mibif*) ;
 scalar_t__ strcmp (int ,int ) ;
 int time (int *) ;

__attribute__((used)) static int
bridge_update_bif(struct bridge_if *bif)
{
 struct mibif *ifp;


 for (ifp = mib_first_if(); ifp != ((void*)0); ifp = mib_next_if(ifp))
  if (strcmp(ifp->name, bif->bif_name) == 0)
   break;

 if (ifp == ((void*)0)) {

  bridge_remove_bif(bif);
  return (0);
 }

 if (ifp->physaddr != ((void*)0) )
  bcopy(ifp->physaddr, bif->br_addr.octet, ETHER_ADDR_LEN);
 else
  bridge_get_basemac(bif->bif_name, bif->br_addr.octet,
      ETHER_ADDR_LEN);

 if (ifp->mib.ifmd_flags & IFF_RUNNING)
  bif->if_status = RowStatus_active;
 else
  bif->if_status = RowStatus_notInService;

 switch (bridge_getinfo_bif(bif)) {
  case 2:
   bridge_new_root(bif);
   break;
  case 1:
   bridge_top_change(bif);
   break;
  case -1:
   bridge_remove_bif(bif);
   return (-1);
  default:
   break;
 }






 bif->num_ports = bridge_update_memif(bif);
 bif->entry_age = time(((void*)0));

 return (1);
}
