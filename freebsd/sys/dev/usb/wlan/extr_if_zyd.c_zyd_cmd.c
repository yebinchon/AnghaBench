
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct zyd_softc {int sc_rqh; int sc_dev; int sc_mtx; int * sc_xfer; } ;
struct zyd_rq {int ilen; int olen; int flags; void* odata; void const* idata; struct zyd_cmd* cmd; } ;
struct zyd_cmd {int data; int code; } ;


 int DPRINTF (struct zyd_softc*,int ,char*,struct zyd_rq*,int,...) ;
 int EINVAL ;
 int STAILQ_INSERT_TAIL (int *,struct zyd_rq*,struct zyd_rq) ;
 int STAILQ_REMOVE (int *,struct zyd_rq*,int ,struct zyd_rq) ;
 int ZYD_DEBUG_CMD ;
 size_t ZYD_INTR_RD ;
 size_t ZYD_INTR_WR ;
 int device_printf (int ,char*) ;
 int htole16 (int ) ;
 int hz ;
 int memcpy (int ,void const*,int) ;
 int mtx_sleep (struct zyd_rq*,int *,int ,char*,int ) ;
 int usbd_transfer_start (int ) ;
 int zyd_rq ;

__attribute__((used)) static int
zyd_cmd(struct zyd_softc *sc, uint16_t code, const void *idata, int ilen,
    void *odata, int olen, int flags)
{
 struct zyd_cmd cmd;
 struct zyd_rq rq;
 int error;

 if (ilen > (int)sizeof(cmd.data))
  return (EINVAL);

 cmd.code = htole16(code);
 memcpy(cmd.data, idata, ilen);
 DPRINTF(sc, ZYD_DEBUG_CMD, "sending cmd %p = %*D\n",
     &rq, ilen, idata, ":");

 rq.cmd = &cmd;
 rq.idata = idata;
 rq.odata = odata;
 rq.ilen = sizeof(uint16_t) + ilen;
 rq.olen = olen;
 rq.flags = flags;
 STAILQ_INSERT_TAIL(&sc->sc_rqh, &rq, rq);
 usbd_transfer_start(sc->sc_xfer[ZYD_INTR_RD]);
 usbd_transfer_start(sc->sc_xfer[ZYD_INTR_WR]);


 error = mtx_sleep(&rq, &sc->sc_mtx, 0 , "zydcmd", hz);
 if (error)
  device_printf(sc->sc_dev, "command timeout\n");
 STAILQ_REMOVE(&sc->sc_rqh, &rq, zyd_rq, rq);
 DPRINTF(sc, ZYD_DEBUG_CMD, "finsihed cmd %p, error = %d \n",
     &rq, error);

 return (error);
}
