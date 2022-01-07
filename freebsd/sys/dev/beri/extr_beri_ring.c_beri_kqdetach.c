
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knote {struct beri_softc* kn_hook; } ;
struct TYPE_2__ {int si_note; } ;
struct beri_softc {TYPE_1__ beri_rsel; } ;


 int knlist_remove (int *,struct knote*,int ) ;

__attribute__((used)) static void
beri_kqdetach(struct knote *kn)
{
 struct beri_softc *sc;

 sc = kn->kn_hook;

 knlist_remove(&sc->beri_rsel.si_note, kn, 0);
}
