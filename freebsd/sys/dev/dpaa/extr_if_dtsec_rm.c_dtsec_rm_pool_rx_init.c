
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtsec_softc {int sc_dev; int * sc_rx_pool; int sc_rx_bpid; int * sc_rx_zone; int sc_rx_zname; } ;


 int CTASSERT (int) ;
 int DTSEC_RM_POOL_RX_HIGH_MARK ;
 int DTSEC_RM_POOL_RX_LOW_MARK ;
 int DTSEC_RM_POOL_RX_MAX_SIZE ;
 int EIO ;
 scalar_t__ FM_PORT_BUFFER_SIZE ;
 scalar_t__ PAGE_SIZE ;
 int * bman_pool_create (int *,scalar_t__,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,struct dtsec_softc*,int *,int *) ;
 char* device_get_nameunit (int ) ;
 int device_printf (int ,char*) ;
 int dtsec_rm_pool_rx_depleted ;
 int dtsec_rm_pool_rx_free (struct dtsec_softc*) ;
 int dtsec_rm_pool_rx_get_buffer ;
 int dtsec_rm_pool_rx_put_buffer ;
 int snprintf (int ,int,char*,char*) ;
 int * uma_zcreate (int ,scalar_t__,int *,int *,int *,int *,scalar_t__,int ) ;

int
dtsec_rm_pool_rx_init(struct dtsec_softc *sc)
{


 CTASSERT(FM_PORT_BUFFER_SIZE < PAGE_SIZE);

 snprintf(sc->sc_rx_zname, sizeof(sc->sc_rx_zname), "%s: RX Buffers",
     device_get_nameunit(sc->sc_dev));

 sc->sc_rx_zone = uma_zcreate(sc->sc_rx_zname, FM_PORT_BUFFER_SIZE, ((void*)0),
     ((void*)0), ((void*)0), ((void*)0), FM_PORT_BUFFER_SIZE - 1, 0);
 if (sc->sc_rx_zone == ((void*)0))
  return (EIO);

 sc->sc_rx_pool = bman_pool_create(&sc->sc_rx_bpid, FM_PORT_BUFFER_SIZE,
     0, 0, DTSEC_RM_POOL_RX_MAX_SIZE, dtsec_rm_pool_rx_get_buffer,
     dtsec_rm_pool_rx_put_buffer, DTSEC_RM_POOL_RX_LOW_MARK,
     DTSEC_RM_POOL_RX_HIGH_MARK, 0, 0, dtsec_rm_pool_rx_depleted, sc, ((void*)0),
     ((void*)0));
 if (sc->sc_rx_pool == ((void*)0)) {
  device_printf(sc->sc_dev, "NULL rx pool  somehow\n");
  dtsec_rm_pool_rx_free(sc);
  return (EIO);
 }

 return (0);
}
