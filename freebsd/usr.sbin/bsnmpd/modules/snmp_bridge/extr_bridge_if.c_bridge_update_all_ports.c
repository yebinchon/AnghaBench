
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mibif {int name; } ;
struct bridge_if {int num_ports; int bif_name; } ;


 struct bridge_if* bridge_first_bif () ;
 struct bridge_if* bridge_next_bif (struct bridge_if*) ;
 int bridge_ports_update_listage () ;
 int bridge_remove_bif (struct bridge_if*) ;
 int bridge_update_memif (struct bridge_if*) ;
 struct mibif* mib_first_if () ;
 struct mibif* mib_next_if (struct mibif*) ;
 scalar_t__ strcmp (int ,int ) ;

void
bridge_update_all_ports(void)
{
 struct mibif *ifp;
 struct bridge_if *bif, *t_bif;

 for (bif = bridge_first_bif(); bif != ((void*)0); bif = t_bif) {
  t_bif = bridge_next_bif(bif);

  for (ifp = mib_first_if(); ifp != ((void*)0);
      ifp = mib_next_if(ifp))
   if (strcmp(ifp->name, bif->bif_name) == 0)
    break;

  if (ifp != ((void*)0))
   bif->num_ports = bridge_update_memif(bif);
  else
   bridge_remove_bif(bif);
 }

 bridge_ports_update_listage();
}
