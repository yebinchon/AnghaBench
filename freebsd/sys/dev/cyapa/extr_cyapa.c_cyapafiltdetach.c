
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knote {scalar_t__ kn_hook; } ;
struct knlist {int dummy; } ;
struct TYPE_2__ {struct knlist si_note; } ;
struct cyapa_softc {TYPE_1__ selinfo; } ;


 int knlist_remove (struct knlist*,struct knote*,int ) ;

__attribute__((used)) static void
cyapafiltdetach(struct knote *kn)
{
 struct cyapa_softc *sc;
 struct knlist *knlist;

 sc = (struct cyapa_softc *)kn->kn_hook;

 knlist = &sc->selinfo.si_note;
 knlist_remove(knlist, kn, 0);
}
