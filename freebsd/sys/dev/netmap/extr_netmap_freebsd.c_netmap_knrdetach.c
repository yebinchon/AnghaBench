
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct nm_selinfo {scalar_t__ kqueue_users; int mtxname; TYPE_1__ si; } ;
struct netmap_priv_d {struct nm_selinfo** np_si; } ;
struct knote {scalar_t__ kn_hook; } ;


 int KASSERT (int,char*) ;
 int NMG_LOCK () ;
 int NMG_UNLOCK () ;
 size_t NR_RX ;
 int knlist_remove (int *,struct knote*,int ) ;
 int nm_prinf (char*,int ,scalar_t__) ;

__attribute__((used)) static void
netmap_knrdetach(struct knote *kn)
{
 struct netmap_priv_d *priv = (struct netmap_priv_d *)kn->kn_hook;
 struct nm_selinfo *si = priv->np_si[NR_RX];

 knlist_remove(&si->si.si_note, kn, 0);
 NMG_LOCK();
 KASSERT(si->kqueue_users > 0, ("kqueue_user underflow on %s",
     si->mtxname));
 si->kqueue_users--;
 nm_prinf("kqueue users for %s: %d", si->mtxname, si->kqueue_users);
 NMG_UNLOCK();
}
