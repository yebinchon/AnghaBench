
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuntap_softc {scalar_t__ tun_busy; int tun_cv; } ;


 int KASSERT (int,char*) ;
 int TUN_LOCK_ASSERT (struct tuntap_softc*) ;
 int cv_broadcast (int *) ;

__attribute__((used)) static void
tun_unbusy_locked(struct tuntap_softc *tp)
{

 TUN_LOCK_ASSERT(tp);
 KASSERT(tp->tun_busy != 0, ("tun_unbusy: called for non-busy tunnel"));

 --tp->tun_busy;

 if (tp->tun_busy == 0)
  cv_broadcast(&tp->tun_cv);
}
