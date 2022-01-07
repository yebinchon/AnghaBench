
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct tuntap_softc {TYPE_1__ tun_rsel; } ;
struct knote {struct tuntap_softc* kn_hook; } ;


 int knlist_remove (int *,struct knote*,int ) ;

__attribute__((used)) static void
tunkqdetach(struct knote *kn)
{
 struct tuntap_softc *tp = kn->kn_hook;

 knlist_remove(&tp->tun_rsel.si_note, kn, 0);
}
