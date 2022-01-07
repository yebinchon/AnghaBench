
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuntap_softc {int tun_ifp; } ;


 int tuninit (int ) ;

__attribute__((used)) static void
tunifinit(void *xtp)
{
 struct tuntap_softc *tp;

 tp = (struct tuntap_softc *)xtp;
 tuninit(tp->tun_ifp);
}
