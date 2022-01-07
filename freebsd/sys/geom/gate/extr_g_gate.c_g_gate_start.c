
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct g_gate_softc {int sc_flags; TYPE_3__* sc_readcons; scalar_t__ sc_readoffset; } ;
struct bio {int bio_cmd; TYPE_2__* bio_to; scalar_t__ bio_offset; int bio_done; } ;
struct TYPE_6__ {TYPE_2__* provider; } ;
struct TYPE_5__ {TYPE_1__* geom; } ;
struct TYPE_4__ {struct g_gate_softc* softc; } ;







 int ENOMEM ;
 int ENXIO ;
 int EOPNOTSUPP ;
 int EPERM ;
 int G_GATE_FLAG_DESTROY ;
 int G_GATE_FLAG_READONLY ;
 int G_GATE_LOGREQ (int,struct bio*,char*) ;
 struct bio* g_clone_bio (struct bio*) ;
 int g_gate_done ;
 int g_gate_queue_io (struct bio*) ;
 int g_io_deliver (struct bio*,int ) ;
 int g_io_request (struct bio*,TYPE_3__*) ;

__attribute__((used)) static void
g_gate_start(struct bio *pbp)
{
 struct g_gate_softc *sc;

 sc = pbp->bio_to->geom->softc;
 if (sc == ((void*)0) || (sc->sc_flags & G_GATE_FLAG_DESTROY) != 0) {
  g_io_deliver(pbp, ENXIO);
  return;
 }
 G_GATE_LOGREQ(2, pbp, "Request received.");
 switch (pbp->bio_cmd) {
 case 129:
  if (sc->sc_readcons != ((void*)0)) {
   struct bio *cbp;

   cbp = g_clone_bio(pbp);
   if (cbp == ((void*)0)) {
    g_io_deliver(pbp, ENOMEM);
    return;
   }
   cbp->bio_done = g_gate_done;
   cbp->bio_offset = pbp->bio_offset + sc->sc_readoffset;
   cbp->bio_to = sc->sc_readcons->provider;
   g_io_request(cbp, sc->sc_readcons);
   return;
  }
  break;
 case 132:
 case 128:
 case 131:

  if ((sc->sc_flags & G_GATE_FLAG_READONLY) != 0) {
   g_io_deliver(pbp, EPERM);
   return;
  }
  break;
 case 130:
 default:
  G_GATE_LOGREQ(2, pbp, "Ignoring request.");
  g_io_deliver(pbp, EOPNOTSUPP);
  return;
 }

 g_gate_queue_io(pbp);
}
