
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mif6 {int m6_flags; struct ifnet* m6_ifp; } ;
struct ifnet {int dummy; } ;
typedef int mifi_t ;
typedef int caddr_t ;


 int DEBUG_ANY ;
 int EINVAL ;
 int MIF6_LOCK_ASSERT () ;
 int MIFF_REGISTER ;
 int MRT6_DLOG (int ,char*,int,int) ;
 int bzero (int ,int) ;
 int if_allmulti (struct ifnet*,int ) ;
 int if_detach (int *) ;
 int if_free (int *) ;
 struct mif6* mif6table ;
 int * multicast_register_if6 ;
 int nummifs ;
 int reg_mif_num ;

__attribute__((used)) static int
del_m6if_locked(mifi_t *mifip)
{
 struct mif6 *mifp = mif6table + *mifip;
 mifi_t mifi;
 struct ifnet *ifp;

 MIF6_LOCK_ASSERT();

 if (*mifip >= nummifs)
  return (EINVAL);
 if (mifp->m6_ifp == ((void*)0))
  return (EINVAL);

 if (!(mifp->m6_flags & MIFF_REGISTER)) {

  ifp = mifp->m6_ifp;
  if_allmulti(ifp, 0);
 } else {
  if (reg_mif_num != (mifi_t)-1 &&
      multicast_register_if6 != ((void*)0)) {
   if_detach(multicast_register_if6);
   if_free(multicast_register_if6);
   reg_mif_num = (mifi_t)-1;
   multicast_register_if6 = ((void*)0);
  }
 }

 bzero((caddr_t)mifp, sizeof(*mifp));


 for (mifi = nummifs; mifi > 0; mifi--)
  if (mif6table[mifi - 1].m6_ifp)
   break;
 nummifs = mifi;
 MRT6_DLOG(DEBUG_ANY, "mif %d, nummifs %d", *mifip, nummifs);

 return (0);
}
