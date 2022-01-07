
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lagg_port {scalar_t__ lp_detaching; int lp_mc_head; int lp_softc; } ;
struct lagg_mc {scalar_t__ mc_ifma; } ;


 int LAGG_XLOCK_ASSERT (int ) ;
 int M_LAGG ;
 struct lagg_mc* SLIST_FIRST (int *) ;
 int SLIST_REMOVE (int *,struct lagg_mc*,int ,int ) ;
 int free (struct lagg_mc*,int ) ;
 int if_delmulti_ifma (scalar_t__) ;
 int lagg_mc ;
 int mc_entries ;

__attribute__((used)) static int
lagg_clrmulti(struct lagg_port *lp)
{
 struct lagg_mc *mc;

 LAGG_XLOCK_ASSERT(lp->lp_softc);
 while ((mc = SLIST_FIRST(&lp->lp_mc_head)) != ((void*)0)) {
  SLIST_REMOVE(&lp->lp_mc_head, mc, lagg_mc, mc_entries);
  if (mc->mc_ifma && lp->lp_detaching == 0)
   if_delmulti_ifma(mc->mc_ifma);
  free(mc, M_LAGG);
 }
 return (0);
}
