
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct psm_softc {int flags; int xold; int yold; } ;
struct TYPE_5__ {int* ipacket; } ;
typedef TYPE_1__ packetbuf_t ;
struct TYPE_6__ {int button; } ;
typedef TYPE_2__ mousestatus_t ;




 int MOUSE_BUTTON4DOWN ;
 int MOUSE_PS2VERSA_BUTTONS ;
 int MOUSE_PS2VERSA_IN_USE ;
 int MOUSE_PS2VERSA_TAP ;
 int PSM_FLAGS_FINGERDOWN ;

__attribute__((used)) static void
proc_versapad(struct psm_softc *sc, packetbuf_t *pb, mousestatus_t *ms,
    int *x, int *y, int *z)
{
 static int butmap_versapad[8] = {
  0,
  128,
  0,
  128,
  129,
  129 | 128,
  129,
  129 | 128
 };
 int c, x0, y0;
 c = pb->ipacket[0];
 *x = *y = 0;
 ms->button = butmap_versapad[c & MOUSE_PS2VERSA_BUTTONS];
 ms->button |= (c & MOUSE_PS2VERSA_TAP) ? MOUSE_BUTTON4DOWN : 0;
 if (c & MOUSE_PS2VERSA_IN_USE) {
  x0 = pb->ipacket[1] | (((pb->ipacket[4]) & 0x0f) << 8);
  y0 = pb->ipacket[2] | (((pb->ipacket[4]) & 0xf0) << 4);
  if (x0 & 0x800)
   x0 -= 0x1000;
  if (y0 & 0x800)
   y0 -= 0x1000;
  if (sc->flags & PSM_FLAGS_FINGERDOWN) {
   *x = sc->xold - x0;
   *y = y0 - sc->yold;
   if (*x < 0)
    ++*x;
   else if (*x)
    --*x;
   if (*y < 0)
    ++*y;
   else if (*y)
    --*y;
  } else
   sc->flags |= PSM_FLAGS_FINGERDOWN;
  sc->xold = x0;
  sc->yold = y0;
 } else
  sc->flags &= ~PSM_FLAGS_FINGERDOWN;
}
