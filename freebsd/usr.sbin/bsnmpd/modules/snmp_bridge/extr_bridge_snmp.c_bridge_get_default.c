
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mibif {int name; } ;
struct bridge_if {int bif_name; } ;


 struct bridge_if* bif_default ;
 struct mibif* mib_first_if () ;
 struct mibif* mib_next_if (struct mibif*) ;
 scalar_t__ strcmp (int ,int ) ;

struct bridge_if *
bridge_get_default(void)
{
 struct mibif *ifp;

 if (bif_default != ((void*)0)) {


  for (ifp = mib_first_if(); ifp != ((void*)0); ifp = mib_next_if(ifp))
   if (strcmp(ifp->name, bif_default->bif_name) == 0)
    break;

  if (ifp == ((void*)0))
   bif_default = ((void*)0);
 }

 return (bif_default);
}
