
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct an_softc {int an_mtx; int an_dev; scalar_t__ mpi350; int port_res; } ;
struct an_ltv_ssidlist_new {int an_len; TYPE_1__* an_entry; int an_type; } ;
struct an_ltv_gen {int dummy; } ;
typedef int ssid ;
typedef int device_t ;
struct TYPE_2__ {int an_ssid; } ;


 int AN_CMD_READCFG ;
 int AN_DEF_SSID ;
 int AN_EVENT_ACK (scalar_t__) ;
 int AN_INT_EN (scalar_t__) ;
 int AN_IOSIZ ;
 int AN_LOCK (struct an_softc*) ;
 int AN_RID_SSIDLIST ;
 int AN_UNLOCK (struct an_softc*) ;
 int CSR_WRITE_2 (struct an_softc*,int ,int) ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int an_alloc_port (int ,int ,int) ;
 scalar_t__ an_cmd (struct an_softc*,int ,int ) ;
 scalar_t__ an_read_record (struct an_softc*,struct an_ltv_gen*) ;
 int an_reset (struct an_softc*) ;
 int bzero (char*,int) ;
 int device_get_nameunit (int ) ;
 struct an_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,int ,int ,int ) ;
 int rman_get_start (int ) ;
 scalar_t__ strcmp (int ,int ) ;

int
an_probe(device_t dev)
{
 struct an_softc *sc = device_get_softc(dev);
 struct an_ltv_ssidlist_new ssid;
 int error;

 bzero((char *)&ssid, sizeof(ssid));

 error = an_alloc_port(dev, 0, AN_IOSIZ);
 if (error != 0)
  return (0);


 if (rman_get_start(sc->port_res) == -1)
  return(0);






 ssid.an_len = sizeof(ssid);
 ssid.an_type = AN_RID_SSIDLIST;


 sc->mpi350 = 0;
 CSR_WRITE_2(sc, AN_INT_EN(sc->mpi350), 0);
 CSR_WRITE_2(sc, AN_EVENT_ACK(sc->mpi350), 0xFFFF);

 sc->an_dev = dev;
 mtx_init(&sc->an_mtx, device_get_nameunit(dev), MTX_NETWORK_LOCK,
     MTX_DEF);
 AN_LOCK(sc);
 an_reset(sc);

 if (an_cmd(sc, AN_CMD_READCFG, 0)) {
  AN_UNLOCK(sc);
  goto fail;
 }

 if (an_read_record(sc, (struct an_ltv_gen *)&ssid)) {
  AN_UNLOCK(sc);
  goto fail;
 }


 if (strcmp(ssid.an_entry[0].an_ssid, AN_DEF_SSID)) {
  AN_UNLOCK(sc);
  goto fail;
 }

 AN_UNLOCK(sc);
 return(AN_IOSIZ);
fail:
 mtx_destroy(&sc->an_mtx);
 return(0);
}
