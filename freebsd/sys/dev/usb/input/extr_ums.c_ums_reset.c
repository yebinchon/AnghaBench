
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ dz; scalar_t__ dy; scalar_t__ dx; scalar_t__ obutton; scalar_t__ button; scalar_t__ flags; } ;
struct TYPE_5__ {int rate; int * syncmask; int packetsize; scalar_t__ level; scalar_t__ accelfactor; int resolution; int protocol; } ;
struct TYPE_4__ {scalar_t__ buttons; scalar_t__ hwid; int model; int type; int iftype; } ;
struct ums_softc {scalar_t__ sc_buttons; TYPE_3__ sc_status; TYPE_2__ sc_mode; TYPE_1__ sc_hw; } ;


 int MOUSE_IF_USB ;
 int MOUSE_MODEL_GENERIC ;
 int MOUSE_MOUSE ;
 scalar_t__ MOUSE_MSC_MAXBUTTON ;
 int MOUSE_MSC_PACKETSIZE ;
 int MOUSE_MSC_SYNC ;
 int MOUSE_MSC_SYNCMASK ;
 int MOUSE_PROTO_MSC ;
 int MOUSE_RES_UNKNOWN ;

__attribute__((used)) static void
ums_reset(struct ums_softc *sc)
{



 if (sc->sc_buttons > MOUSE_MSC_MAXBUTTON)
  sc->sc_hw.buttons = MOUSE_MSC_MAXBUTTON;
 else
  sc->sc_hw.buttons = sc->sc_buttons;

 sc->sc_hw.iftype = MOUSE_IF_USB;
 sc->sc_hw.type = MOUSE_MOUSE;
 sc->sc_hw.model = MOUSE_MODEL_GENERIC;
 sc->sc_hw.hwid = 0;

 sc->sc_mode.protocol = MOUSE_PROTO_MSC;
 sc->sc_mode.rate = -1;
 sc->sc_mode.resolution = MOUSE_RES_UNKNOWN;
 sc->sc_mode.accelfactor = 0;
 sc->sc_mode.level = 0;
 sc->sc_mode.packetsize = MOUSE_MSC_PACKETSIZE;
 sc->sc_mode.syncmask[0] = MOUSE_MSC_SYNCMASK;
 sc->sc_mode.syncmask[1] = MOUSE_MSC_SYNC;



 sc->sc_status.flags = 0;
 sc->sc_status.button = 0;
 sc->sc_status.obutton = 0;
 sc->sc_status.dx = 0;
 sc->sc_status.dy = 0;
 sc->sc_status.dz = 0;

}
