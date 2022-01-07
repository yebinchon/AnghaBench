
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_21__ {int count; int tail; int * buf; } ;
struct TYPE_20__ {int flags; int dx; int dy; int dz; int button; } ;
struct TYPE_22__ {int* ipacket; int inputbytes; } ;
struct TYPE_19__ {scalar_t__ level; int accelfactor; } ;
struct TYPE_18__ {int model; } ;
struct psm_softc {size_t pqueue_start; size_t pqueue_end; int button; int config; int state; int idletimeout; int softcallout; int * async; int rsel; TYPE_4__ queue; int watchdog; TYPE_3__ status; TYPE_5__ idlepacket; TYPE_2__ mode; int evdev_r; TYPE_1__ hw; TYPE_5__* pqueue; int lastsoftintr; } ;
typedef TYPE_5__ packetbuf_t ;
struct TYPE_23__ {int obutton; int button; int dx; int dy; int dz; int flags; } ;
typedef TYPE_6__ mousestatus_t ;


 int EVDEV_RCPT_HW_MOUSE ;
 int FALSE ;
 int LOG_DEBUG ;
 int MOUSE_4DPLUS_BUTTON4DOWN ;
 int MOUSE_4DPLUS_ZNEG ;
 int MOUSE_4D_WHEELBITS ;



 int MOUSE_BUTTON4DOWN ;
 int MOUSE_BUTTON5DOWN ;
 int MOUSE_EXPLORER_BUTTON4DOWN ;
 int MOUSE_EXPLORER_BUTTON5DOWN ;
 int MOUSE_EXPLORER_ZNEG ;
 int MOUSE_EXTBUTTONS ;
 int MOUSE_POSCHANGED ;
 int MOUSE_PS2INTELLI_BUTTON4DOWN ;
 int MOUSE_PS2INTELLI_BUTTON5DOWN ;
 int MOUSE_PS2_BUTTON1DOWN ;
 int MOUSE_PS2_BUTTON3DOWN ;
 int MOUSE_PS2_BUTTONS ;
 int MOUSE_PS2_PACKETSIZE ;
 int MOUSE_PS2_TAP ;
 int MOUSE_PS2_XNEG ;
 int MOUSE_PS2_XOVERFLOW ;
 int MOUSE_PS2_YNEG ;
 int PSM_ASLP ;
 int PSM_CONFIG_FORCETAP ;
 scalar_t__ PSM_LEVEL_NATIVE ;
 size_t PSM_PACKETQUEUE ;
 int PSM_SOFTARMED ;
 int PZERO ;
 int REL_HWHEEL ;
 int REL_WHEEL ;
 int REL_X ;
 int REL_Y ;
 int SIGIO ;
 int VLOG (int,int ) ;
 int bcopy (int*,int *,int) ;
 int callout_reset (int *,int ,int ,struct psm_softc*) ;
 int evdev_push_mouse_btn (int ,int) ;
 int evdev_push_rel (int ,int ,int) ;
 int evdev_rcpt_mask ;
 int evdev_sync (int ) ;
 int getmicrouptime (int *) ;
 int imin (int,int) ;
 int pgsigio (int **,int ,int ) ;
 int proc_elantech (struct psm_softc*,TYPE_5__*,TYPE_6__*,int*,int*,int*) ;
 int proc_mmanplus (struct psm_softc*,TYPE_5__*,TYPE_6__*,int*,int*,int*) ;
 int proc_synaptics (struct psm_softc*,TYPE_5__*,TYPE_6__*,int*,int*,int*) ;
 int proc_synaptics_mux (struct psm_softc*,TYPE_5__*) ;
 int proc_versapad (struct psm_softc*,TYPE_5__*,TYPE_6__*,int*,int*,int*) ;
 int psmsoftintridle ;
 int selwakeuppri (int *,int ) ;
 int spltty () ;
 int splx (int) ;
 int tame_mouse (struct psm_softc*,TYPE_5__*,TYPE_6__*,int*) ;
 int timevalclear (int *) ;
 scalar_t__ timevalisset (int *) ;
 int tvtohz (int *) ;
 int wakeup (struct psm_softc*) ;

__attribute__((used)) static void
psmsoftintr(void *arg)
{




 static int butmap[8] = {
  0,
  144,
  142,
  144 | 142,
  143,
  144 | 143,
  143 | 142,
  144 | 143 | 142
 };
 struct psm_softc *sc = arg;
 mousestatus_t ms;
 packetbuf_t *pb;
 int x, y, z, c, l, s;

 getmicrouptime(&sc->lastsoftintr);

 s = spltty();

 do {
  pb = &sc->pqueue[sc->pqueue_start];

  if (sc->mode.level == PSM_LEVEL_NATIVE)
   goto next_native;

  c = pb->ipacket[0];





  if (sc->hw.model == 130)
   pb->ipacket[1] |= (c & MOUSE_PS2_XOVERFLOW) ? 0x80 : 0;


  x = (c & MOUSE_PS2_XNEG) ?
      pb->ipacket[1] - 256 : pb->ipacket[1];
  y = (c & MOUSE_PS2_YNEG) ?
      pb->ipacket[2] - 256 : pb->ipacket[2];
  z = 0;
  ms.obutton = sc->button;
  ms.button = butmap[c & MOUSE_PS2_BUTTONS];

  if (sc->config & PSM_CONFIG_FORCETAP)
   ms.button |= ((c & MOUSE_PS2_TAP)) ?
       0 : MOUSE_BUTTON4DOWN;
  timevalclear(&sc->idletimeout);
  sc->idlepacket.inputbytes = 0;

  switch (sc->hw.model) {

  case 138:
   z = (pb->ipacket[3] & MOUSE_EXPLORER_ZNEG) ?
       (pb->ipacket[3] & 0x0f) - 16 :
       (pb->ipacket[3] & 0x0f);
   ms.button |=
       (pb->ipacket[3] & MOUSE_EXPLORER_BUTTON4DOWN) ?
       MOUSE_BUTTON4DOWN : 0;
   ms.button |=
       (pb->ipacket[3] & MOUSE_EXPLORER_BUTTON5DOWN) ?
       MOUSE_BUTTON5DOWN : 0;
   break;

  case 135:
  case 133:

   z = (char)pb->ipacket[3];


   if ((z >= 7) || (z <= -7))
    z = 0;

   ms.button |= (c & MOUSE_PS2INTELLI_BUTTON4DOWN) ?
       MOUSE_BUTTON4DOWN : 0;
   ms.button |= (c & MOUSE_PS2INTELLI_BUTTON5DOWN) ?
       MOUSE_BUTTON5DOWN : 0;
   break;

  case 134:
   proc_mmanplus(sc, pb, &ms, &x, &y, &z);
   break;

  case 136:

   ms.button |= ((c & MOUSE_PS2_TAP)) ? 0 :
       MOUSE_BUTTON4DOWN;
   break;

  case 132:




   ms.button |= (pb->ipacket[3] & MOUSE_PS2_BUTTON3DOWN) ?
       MOUSE_BUTTON4DOWN : 0;
   ms.button |= (pb->ipacket[3] & MOUSE_PS2_BUTTON1DOWN) ?
       MOUSE_BUTTON5DOWN : 0;
   z = (pb->ipacket[3] & MOUSE_PS2_XNEG) ?
       pb->ipacket[4] - 256 : pb->ipacket[4];
   break;

  case 130:

   ms.button |= (c & MOUSE_PS2_TAP) ?
       MOUSE_BUTTON4DOWN : 0;
   break;

  case 128:
   proc_versapad(sc, pb, &ms, &x, &y, &z);
   c = ((x < 0) ? MOUSE_PS2_XNEG : 0) |
       ((y < 0) ? MOUSE_PS2_YNEG : 0);
   break;

  case 141:
   x = (pb->ipacket[1] & 0x80) ?
       pb->ipacket[1] - 256 : pb->ipacket[1];
   y = (pb->ipacket[2] & 0x80) ?
       pb->ipacket[2] - 256 : pb->ipacket[2];
   switch (c & MOUSE_4D_WHEELBITS) {
   case 0x10:
    z = 1;
    break;
   case 0x30:
    z = -1;
    break;
   case 0x40:
    z = 2;
    break;
   case 0xc0:
    z = -2;
    break;
   }
   break;

  case 140:
   if ((x < 16 - 256) && (y < 16 - 256)) {
    x = y = 0;
    if (pb->ipacket[2] & MOUSE_4DPLUS_BUTTON4DOWN)
     ms.button |= MOUSE_BUTTON4DOWN;
    z = (pb->ipacket[2] & MOUSE_4DPLUS_ZNEG) ?
        ((pb->ipacket[2] & 0x07) - 8) :
        (pb->ipacket[2] & 0x07) ;
   } else {

    ms.button |= ms.obutton & MOUSE_EXTBUTTONS;
   }
   break;

  case 131:
   if (pb->inputbytes == MOUSE_PS2_PACKETSIZE)
    if (proc_synaptics_mux(sc, pb))
     goto next;

   if (proc_synaptics(sc, pb, &ms, &x, &y, &z) != 0) {
    VLOG(3, (LOG_DEBUG, "synaptics: "
        "packet rejected\n"));
    goto next;
   }
   break;

  case 139:
   if (proc_elantech(sc, pb, &ms, &x, &y, &z) != 0) {
    VLOG(3, (LOG_DEBUG, "elantech: "
        "packet rejected\n"));
    goto next;
   }
   break;

  case 129:
  case 137:
  default:
   break;
  }
 if (sc->mode.accelfactor >= 1) {
  if (x != 0) {
   x = x * x / sc->mode.accelfactor;
   if (x == 0)
    x = 1;
   if (c & MOUSE_PS2_XNEG)
    x = -x;
  }
  if (y != 0) {
   y = y * y / sc->mode.accelfactor;
   if (y == 0)
    y = 1;
   if (c & MOUSE_PS2_YNEG)
    y = -y;
  }
 }


 if (timevalisset(&sc->idletimeout) && sc->idlepacket.inputbytes == 0)
  sc->idlepacket = *pb;

 ms.dx = x;
 ms.dy = y;
 ms.dz = z;
 ms.flags = ((x || y || z) ? MOUSE_POSCHANGED : 0) |
     (ms.obutton ^ ms.button);

 pb->inputbytes = tame_mouse(sc, pb, &ms, pb->ipacket);

 sc->status.flags |= ms.flags;
 sc->status.dx += ms.dx;
 sc->status.dy += ms.dy;
 sc->status.dz += ms.dz;
 sc->status.button = ms.button;
 sc->button = ms.button;

next_native:
 sc->watchdog = FALSE;


 if (sc->queue.count + pb->inputbytes < sizeof(sc->queue.buf)) {
  l = imin(pb->inputbytes,
      sizeof(sc->queue.buf) - sc->queue.tail);
  bcopy(&pb->ipacket[0], &sc->queue.buf[sc->queue.tail], l);
  if (pb->inputbytes > l)
   bcopy(&pb->ipacket[l], &sc->queue.buf[0],
       pb->inputbytes - l);
  sc->queue.tail = (sc->queue.tail + pb->inputbytes) %
      sizeof(sc->queue.buf);
  sc->queue.count += pb->inputbytes;
 }

next:
 pb->inputbytes = 0;
 if (++sc->pqueue_start >= PSM_PACKETQUEUE)
  sc->pqueue_start = 0;
 } while (sc->pqueue_start != sc->pqueue_end);

 if (sc->state & PSM_ASLP) {
  sc->state &= ~PSM_ASLP;
  wakeup(sc);
 }
 selwakeuppri(&sc->rsel, PZERO);
 if (sc->async != ((void*)0)) {
  pgsigio(&sc->async, SIGIO, 0);
 }
 sc->state &= ~PSM_SOFTARMED;



 if (timevalisset(&sc->idletimeout)) {
  sc->state |= PSM_SOFTARMED;
  callout_reset(&sc->softcallout, tvtohz(&sc->idletimeout),
      psmsoftintridle, sc);
  VLOG(2, (LOG_DEBUG, "softintr: callout set: %d ticks\n",
      tvtohz(&sc->idletimeout)));
 }
 splx(s);
}
