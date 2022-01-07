
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuntap_softc {int tun_flags; int tun_busy; } ;


 int EBUSY ;
 int TUN_DYING ;
 int TUN_LOCK_ASSERT (struct tuntap_softc*) ;

__attribute__((used)) static int
tun_busy_locked(struct tuntap_softc *tp)
{

 TUN_LOCK_ASSERT(tp);
 if ((tp->tun_flags & TUN_DYING) != 0) {






  return (EBUSY);
 }

 ++tp->tun_busy;
 return (0);
}
