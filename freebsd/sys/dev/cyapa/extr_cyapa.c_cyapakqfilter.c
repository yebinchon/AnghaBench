
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knote {int kn_filter; void* kn_hook; int * kn_fop; } ;
struct knlist {int dummy; } ;
struct TYPE_2__ {struct knlist si_note; } ;
struct cyapa_softc {TYPE_1__ selinfo; } ;
struct cdev {struct cyapa_softc* si_drv1; } ;


 int EOPNOTSUPP ;

 int cyapa_filtops ;
 int knlist_add (struct knlist*,struct knote*,int ) ;

__attribute__((used)) static int
cyapakqfilter(struct cdev *dev, struct knote *kn)
{
 struct cyapa_softc *sc;
 struct knlist *knlist;

 sc = dev->si_drv1;

 switch(kn->kn_filter) {
 case 128:
  kn->kn_fop = &cyapa_filtops;
  kn->kn_hook = (void *)sc;
  break;
 default:
  return (EOPNOTSUPP);
 }
 knlist = &sc->selinfo.si_note;
 knlist_add(knlist, kn, 0);

 return (0);
}
