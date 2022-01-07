
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int si_note; } ;
struct beri_softc {int beri_mtx; TYPE_3__ beri_rsel; } ;
struct TYPE_5__ {int cdes; } ;
typedef TYPE_1__ control_reg_t ;


 int CDES_INT_EN ;
 int KNOTE_LOCKED (int *,int ) ;
 scalar_t__ PZERO ;
 TYPE_1__ get_control_reg (struct beri_softc*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int selwakeuppri (TYPE_3__*,scalar_t__) ;
 int set_control_reg (struct beri_softc*,int ,TYPE_1__*) ;

__attribute__((used)) static void
beri_intr_read(void *arg)
{
 struct beri_softc *sc;
 control_reg_t c;

 sc = arg;

 c = get_control_reg(sc, 0);
 if (c.cdes & CDES_INT_EN) {
  c.cdes &= ~(CDES_INT_EN);
  set_control_reg(sc, 0, &c);
 }

 mtx_lock(&sc->beri_mtx);
 selwakeuppri(&sc->beri_rsel, PZERO + 1);
 KNOTE_LOCKED(&sc->beri_rsel.si_note, 0);
 mtx_unlock(&sc->beri_mtx);
}
