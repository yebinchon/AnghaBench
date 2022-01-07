
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knote {int kn_filter; struct beri_softc* kn_hook; int * kn_fop; } ;
struct cdev {struct beri_softc* si_drv1; } ;
struct TYPE_2__ {int si_note; } ;
struct beri_softc {TYPE_1__ beri_rsel; } ;


 int EINVAL ;


 int beri_read_filterops ;
 int beri_write_filterops ;
 int knlist_add (int *,struct knote*,int ) ;

__attribute__((used)) static int
beri_kqfilter(struct cdev *dev, struct knote *kn)
{
 struct beri_softc *sc;

 sc = dev->si_drv1;

 switch(kn->kn_filter) {
 case 129:
  kn->kn_fop = &beri_read_filterops;
  break;
 case 128:
  kn->kn_fop = &beri_write_filterops;
  break;
 default:
  return(EINVAL);
 }

 kn->kn_hook = sc;
 knlist_add(&sc->beri_rsel.si_note, kn, 0);

 return (0);
}
