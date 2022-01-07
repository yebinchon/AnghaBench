
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udl_softc {int * sc_xfer; int sc_cmd_buf_pending; int sc_cmd_buf_free; scalar_t__ sc_gone; } ;
struct udl_cmd_buf {int dummy; } ;


 int TAILQ_INSERT_TAIL (int *,struct udl_cmd_buf*,int ) ;
 int UDL_BULK_CMD_EOC ;
 int UDL_BULK_SOC ;
 size_t UDL_BULK_WRITE_0 ;
 size_t UDL_BULK_WRITE_1 ;
 int UDL_LOCK (struct udl_softc*) ;
 int UDL_UNLOCK (struct udl_softc*) ;
 int entry ;
 int udl_cmd_insert_int_1 (struct udl_cmd_buf*,int ) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
udl_cmd_buf_send(struct udl_softc *sc, struct udl_cmd_buf *cb)
{
 UDL_LOCK(sc);
 if (sc->sc_gone) {
  TAILQ_INSERT_TAIL(&sc->sc_cmd_buf_free, cb, entry);
 } else {

  udl_cmd_insert_int_1(cb, UDL_BULK_SOC);
  udl_cmd_insert_int_1(cb, UDL_BULK_CMD_EOC);

  TAILQ_INSERT_TAIL(&sc->sc_cmd_buf_pending, cb, entry);
  usbd_transfer_start(sc->sc_xfer[UDL_BULK_WRITE_0]);
  usbd_transfer_start(sc->sc_xfer[UDL_BULK_WRITE_1]);
 }
 UDL_UNLOCK(sc);
}
