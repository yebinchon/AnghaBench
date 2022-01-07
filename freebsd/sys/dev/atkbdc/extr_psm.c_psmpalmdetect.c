
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ capPen; scalar_t__ capPalmDetect; scalar_t__ capReportsV; scalar_t__ capAdvancedGestures; scalar_t__ capMultiFinger; } ;
struct TYPE_5__ {scalar_t__ max_width; scalar_t__ max_pressure; } ;
struct psm_softc {TYPE_2__ synhw; TYPE_1__ syninfo; } ;
struct TYPE_7__ {scalar_t__ w; scalar_t__ p; int flags; } ;
typedef TYPE_3__ finger_t ;


 int LOG_DEBUG ;
 int PSM_FINGER_IS_PEN ;
 int VLOG (int,int ) ;

__attribute__((used)) static int
psmpalmdetect(struct psm_softc *sc, finger_t *f, int nfingers)
{
 if (!(
     ((sc->synhw.capMultiFinger || sc->synhw.capAdvancedGestures) &&
       !sc->synhw.capReportsV && nfingers > 1) ||
     (sc->synhw.capReportsV && nfingers > 2) ||
     (sc->synhw.capPalmDetect && f->w <= sc->syninfo.max_width) ||
     (!sc->synhw.capPalmDetect && f->p <= sc->syninfo.max_pressure) ||
     (sc->synhw.capPen && f->flags & PSM_FINGER_IS_PEN))) {
  VLOG(2, (LOG_DEBUG, "synaptics: palm detected! (%d)\n", f->w));
  return (1);
 }
 return (0);
}
