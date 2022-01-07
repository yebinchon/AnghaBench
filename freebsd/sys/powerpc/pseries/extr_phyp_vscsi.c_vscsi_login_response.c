
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct vscsi_xfer {scalar_t__ srp_iu_offset; struct vscsi_softc* sc; } ;
struct vscsi_softc {int bus_logged_in; int max_transactions; int dev; scalar_t__ srp_iu_queue; } ;
struct vscsi_crq {int dummy; } ;
struct srp_login_rsp {int request_limit_delta; int buffer_formats; } ;


 int KASSERT (int,char*) ;
 int be16toh (int ) ;
 int be32toh (int ) ;
 int device_printf (int ,char*,int ) ;

__attribute__((used)) static void
vscsi_login_response(struct vscsi_xfer *xp, struct vscsi_crq *crq)
{
 struct vscsi_softc *sc = xp->sc;
 struct srp_login_rsp *rsp;


 rsp = (struct srp_login_rsp *)((uint8_t *)sc->srp_iu_queue +
     (uintptr_t)xp->srp_iu_offset);
 KASSERT(be16toh(rsp->buffer_formats) & 0x3, ("Both direct and indirect "
     "buffers supported"));

 sc->max_transactions = be32toh(rsp->request_limit_delta);
 device_printf(sc->dev, "Queue depth %d commands\n",
     sc->max_transactions);
 sc->bus_logged_in = 1;
}
