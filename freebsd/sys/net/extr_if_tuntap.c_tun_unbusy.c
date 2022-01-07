
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuntap_softc {int dummy; } ;


 int TUN_LOCK (struct tuntap_softc*) ;
 int TUN_UNLOCK (struct tuntap_softc*) ;
 int tun_unbusy_locked (struct tuntap_softc*) ;

__attribute__((used)) static void
tun_unbusy(struct tuntap_softc *tp)
{

 TUN_LOCK(tp);
 tun_unbusy_locked(tp);
 TUN_UNLOCK(tp);
}
