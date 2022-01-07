
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ dz; scalar_t__ dy; scalar_t__ dx; scalar_t__ obutton; scalar_t__ button; scalar_t__ flags; } ;
struct TYPE_7__ {scalar_t__ tail; scalar_t__ head; scalar_t__ count; } ;
struct TYPE_6__ {int protocol; int level; } ;
struct TYPE_5__ {int protocol; int level; } ;
struct psm_softc {int kbdc; int unit; scalar_t__ pkterrors; scalar_t__ syncerrors; scalar_t__ pqueue_end; scalar_t__ pqueue_start; scalar_t__ button; TYPE_4__ status; TYPE_3__ queue; int * async; int watchdog; TYPE_2__ dflt_mode; TYPE_1__ mode; } ;


 int EIO ;
 int FALSE ;
 int KBD_DISABLE_AUX_INT ;
 int KBD_DISABLE_KBD_INT ;
 int KBD_DISABLE_KBD_PORT ;
 int KBD_ENABLE_AUX_PORT ;
 int LOG_ERR ;
 int TRUE ;
 int doopen (struct psm_softc*,int) ;
 int flushpackets (struct psm_softc*) ;
 int get_controller_command_byte (int ) ;
 int kbdc_get_device_mask (int ) ;
 int kbdc_lock (int ,int ) ;
 int log (int ,char*,int ) ;
 int set_controller_command_byte (int ,int ,int) ;
 int spltty () ;
 int splx (int) ;

__attribute__((used)) static int
psmopen(struct psm_softc *sc)
{
 int command_byte;
 int err;
 int s;


 sc->mode.level = sc->dflt_mode.level;
 sc->mode.protocol = sc->dflt_mode.protocol;
 sc->watchdog = FALSE;
 sc->async = ((void*)0);


 sc->queue.count = 0;
 sc->queue.head = 0;
 sc->queue.tail = 0;
 sc->status.flags = 0;
 sc->status.button = 0;
 sc->status.obutton = 0;
 sc->status.dx = 0;
 sc->status.dy = 0;
 sc->status.dz = 0;
 sc->button = 0;
 sc->pqueue_start = 0;
 sc->pqueue_end = 0;


 flushpackets(sc);
 sc->syncerrors = 0;
 sc->pkterrors = 0;


 if (!kbdc_lock(sc->kbdc, TRUE))
  return (EIO);


 s = spltty();
 command_byte = get_controller_command_byte(sc->kbdc);


 if (command_byte == -1 || !set_controller_command_byte(sc->kbdc,
     kbdc_get_device_mask(sc->kbdc),
     KBD_DISABLE_KBD_PORT | KBD_DISABLE_KBD_INT |
     KBD_ENABLE_AUX_PORT | KBD_DISABLE_AUX_INT)) {

  kbdc_lock(sc->kbdc, FALSE);
  splx(s);
  log(LOG_ERR,
      "psm%d: unable to set the command byte (psmopen).\n",
      sc->unit);
  return (EIO);
 }







 splx(s);


 err = doopen(sc, command_byte);


 kbdc_lock(sc->kbdc, FALSE);
 return (err);
}
