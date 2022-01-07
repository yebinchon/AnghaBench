
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct bwn_softc {int sc_dev; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;


 int BWN_LOCK (struct bwn_softc*) ;
 int BWN_MACCTL ;
 scalar_t__ BWN_MACCTL_GMODE ;
 scalar_t__ BWN_MACCTL_IHR_ON ;
 int BWN_READ_2 (struct bwn_mac*,int ) ;
 scalar_t__ BWN_READ_4 (struct bwn_mac*,int ) ;
 int BWN_SHARED ;
 int BWN_TSF_CFP_START ;
 int BWN_TSF_CFP_START_HIGH ;
 int BWN_TSF_CFP_START_LOW ;
 int BWN_UNLOCK (struct bwn_softc*) ;
 int BWN_WRITE_2 (struct bwn_mac*,int ,int) ;
 int BWN_WRITE_4 (struct bwn_mac*,int ,int) ;
 int ENODEV ;
 scalar_t__ TESTVAL0 ;
 scalar_t__ TESTVAL1 ;
 int bhnd_get_hwrev (int ) ;
 scalar_t__ bwn_shm_read_4 (struct bwn_mac*,int ,int ) ;
 int bwn_shm_write_4 (struct bwn_mac*,int ,int ,scalar_t__) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
bwn_chiptest(struct bwn_mac *mac)
{


 struct bwn_softc *sc = mac->mac_sc;
 uint32_t v, backup;

 BWN_LOCK(sc);

 backup = bwn_shm_read_4(mac, BWN_SHARED, 0);

 bwn_shm_write_4(mac, BWN_SHARED, 0, 0x55aaaa55);
 if (bwn_shm_read_4(mac, BWN_SHARED, 0) != 0x55aaaa55)
  goto error;
 bwn_shm_write_4(mac, BWN_SHARED, 0, 0xaa5555aa);
 if (bwn_shm_read_4(mac, BWN_SHARED, 0) != 0xaa5555aa)
  goto error;

 bwn_shm_write_4(mac, BWN_SHARED, 0, backup);

 if ((bhnd_get_hwrev(sc->sc_dev) >= 3) &&
     (bhnd_get_hwrev(sc->sc_dev) <= 10)) {
  BWN_WRITE_2(mac, BWN_TSF_CFP_START, 0xaaaa);
  BWN_WRITE_4(mac, BWN_TSF_CFP_START, 0xccccbbbb);
  if (BWN_READ_2(mac, BWN_TSF_CFP_START_LOW) != 0xbbbb)
   goto error;
  if (BWN_READ_2(mac, BWN_TSF_CFP_START_HIGH) != 0xcccc)
   goto error;
 }
 BWN_WRITE_4(mac, BWN_TSF_CFP_START, 0);

 v = BWN_READ_4(mac, BWN_MACCTL) | BWN_MACCTL_GMODE;
 if (v != (BWN_MACCTL_GMODE | BWN_MACCTL_IHR_ON))
  goto error;

 BWN_UNLOCK(sc);
 return (0);
error:
 BWN_UNLOCK(sc);
 device_printf(sc->sc_dev, "failed to validate the chipaccess\n");
 return (ENODEV);
}
