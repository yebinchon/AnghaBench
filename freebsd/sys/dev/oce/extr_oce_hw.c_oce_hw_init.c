
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct oce_bmbx {int dummy; } ;
struct TYPE_16__ {int size_of_struct; } ;
struct TYPE_15__ {int flags; int dev; int bsmbx; scalar_t__ be3_native; TYPE_4__ macaddr; } ;
typedef TYPE_1__* POCE_SOFTC ;


 scalar_t__ IS_BE (TYPE_1__*) ;
 scalar_t__ IS_SH (TYPE_1__*) ;
 int MAC_ADDRESS_TYPE_NETWORK ;
 int OCE_FLAGS_BE3 ;
 int device_printf (int ,char*) ;
 int oce_POST (TYPE_1__*) ;
 int oce_dma_alloc (TYPE_1__*,int,int *,int ) ;
 int oce_dma_free (TYPE_1__*,int *) ;
 int oce_get_fw_config (TYPE_1__*) ;
 int oce_get_fw_version (TYPE_1__*) ;
 int oce_mbox_check_native_mode (TYPE_1__*) ;
 int oce_mbox_init (TYPE_1__*) ;
 int oce_read_mac_addr (TYPE_1__*,int ,int,int ,TYPE_4__*) ;
 int oce_reset_fun (TYPE_1__*) ;

int
oce_hw_init(POCE_SOFTC sc)
{
 int rc = 0;

 rc = oce_POST(sc);
 if (rc)
  return rc;


 rc = oce_dma_alloc(sc, sizeof(struct oce_bmbx), &sc->bsmbx, 0);
 if (rc) {
  device_printf(sc->dev, "Mailbox alloc failed\n");
  return rc;
 }

 rc = oce_reset_fun(sc);
 if (rc)
  goto error;


 rc = oce_mbox_init(sc);
 if (rc)
  goto error;


 rc = oce_get_fw_version(sc);
 if (rc)
  goto error;


 rc = oce_get_fw_config(sc);
 if (rc)
  goto error;


 sc->macaddr.size_of_struct = 6;
 rc = oce_read_mac_addr(sc, 0, 1, MAC_ADDRESS_TYPE_NETWORK,
     &sc->macaddr);
 if (rc)
  goto error;

 if ((IS_BE(sc) && (sc->flags & OCE_FLAGS_BE3)) || IS_SH(sc)) {
  rc = oce_mbox_check_native_mode(sc);
  if (rc)
   goto error;
 } else
  sc->be3_native = 0;

 return rc;

error:
 oce_dma_free(sc, &sc->bsmbx);
 device_printf(sc->dev, "Hardware initialisation failed\n");
 return rc;
}
