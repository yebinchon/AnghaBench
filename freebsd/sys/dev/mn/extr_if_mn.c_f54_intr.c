
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int timeout_t ;
struct mn_softc {unsigned int falc_irq; char* name; unsigned int falc_state; unsigned int framer_state; TYPE_2__* f54r; int cnt_rbc; int cnt_cec3; int cnt_cec2; int cnt_ebc; int cnt_cec1; int cnt_cvc; int cnt_fec; TYPE_1__** ch; } ;
struct TYPE_10__ {int if_flags; } ;
struct TYPE_9__ {scalar_t__ pp_up; scalar_t__ pp_down; } ;
struct TYPE_8__ {unsigned int gis; int isr0; int isr1; int isr2; unsigned int isr3; int frs0; int frs1; int rsw; unsigned int rsp; scalar_t__ rbc; scalar_t__ cec3; scalar_t__ cec2; scalar_t__ ebc; scalar_t__ cec1; scalar_t__ cvc; scalar_t__ fec; } ;
struct TYPE_7__ {TYPE_3__ ifsppp; } ;


 int IFF_UP ;
 size_t M32_CHAN ;
 TYPE_5__* SP2IFP (TYPE_3__*) ;
 int hz ;
 size_t i ;
 int printf (char*,char*,unsigned int,...) ;
 TYPE_3__* sp ;
 int timeout (int *,TYPE_3__*,int) ;

__attribute__((used)) static void
f54_intr(struct mn_softc *sc)
{
 unsigned g, u, s;

 g = sc->f54r->gis;
 u = sc->f54r->isr0 << 24;
 u |= sc->f54r->isr1 << 16;
 u |= sc->f54r->isr2 << 8;
 u |= sc->f54r->isr3;
 sc->falc_irq = u;

 if (u & ~0x40) {







  s = sc->f54r->frs0 << 24;
  s |= sc->f54r->frs1 << 16;
  s |= sc->f54r->rsw << 8;
  s |= sc->f54r->rsp;
  sc->falc_state = s;

  s &= ~0x01844038;
  s &= ~0x00009fc7;
  s &= ~0x00780000;
  s &= ~0x06000000;







  if (s != sc->framer_state) {
   sc->framer_state = s;
  }
 }


 if (!(u & 0x40))
  return;
 sc->cnt_fec += sc->f54r->fec;
 sc->cnt_cvc += sc->f54r->cvc;
 sc->cnt_cec1 += sc->f54r->cec1;
 sc->cnt_ebc += sc->f54r->ebc;
 sc->cnt_cec2 += sc->f54r->cec2;
 sc->cnt_cec3 += sc->f54r->cec3;
 sc->cnt_rbc += sc->f54r->rbc;
}
