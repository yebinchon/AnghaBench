
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int u_char ;
struct jzsmb_softc {int bus_freq; int i2c_freq; } ;
typedef int device_t ;


 int EINVAL ;
 int JZSMB_HCNT_BASE ;
 int JZSMB_HCNT_MIN ;
 int JZSMB_HOLD_TIME_FAST ;
 int JZSMB_HOLD_TIME_STANDARD ;
 int JZSMB_LCNT_BASE ;
 int JZSMB_LCNT_MIN ;
 int JZSMB_PERIOD_MAX_FAST ;
 int JZSMB_PERIOD_MAX_STANDARD ;
 int JZSMB_PERIOD_MIN_FAST ;
 int JZSMB_PERIOD_MIN_STANDARD ;
 int JZSMB_SETUP_TIME_FAST ;
 int JZSMB_SETUP_TIME_STANDARD ;


 int MAX (int,int) ;
 int MIN (int,int) ;
 int SMBCON ;
 int SMBCON_MD ;
 int SMBCON_REST ;
 int SMBCON_SLVDIS ;
 int SMBCON_SPD_FAST ;
 int SMBCON_SPD_STANDARD ;
 int SMBFHCNT ;
 int SMBFLCNT ;
 int SMBINTM ;
 int SMBSDAHD ;
 int SMBSDAHD_HDENB ;
 int SMBSDASU ;
 int SMBSHCNT ;
 int SMBSLCNT ;
 int SMBTAR ;
 int SMB_ASSERT_LOCKED (struct jzsmb_softc*) ;
 int SMB_WRITE (struct jzsmb_softc*,int ,int) ;
 struct jzsmb_softc* device_get_softc (int ) ;
 int jzsmb_enable (struct jzsmb_softc*,int) ;

__attribute__((used)) static int
jzsmb_reset_locked(device_t dev, u_char addr)
{
 struct jzsmb_softc *sc;
 uint16_t con;
 uint32_t period;
 int hcnt, lcnt, setup_time, hold_time;

 sc = device_get_softc(dev);

 SMB_ASSERT_LOCKED(sc);




 jzsmb_enable(sc, 0);


 SMB_WRITE(sc, SMBINTM, 0);


 period = sc->bus_freq / sc->i2c_freq;
 con = SMBCON_REST | SMBCON_SLVDIS | SMBCON_MD;
 switch (sc->i2c_freq) {
 case 128:
  con |= SMBCON_SPD_STANDARD;
  setup_time = JZSMB_SETUP_TIME_STANDARD;
  hold_time = JZSMB_HOLD_TIME_STANDARD;
  hcnt = (period * JZSMB_PERIOD_MIN_STANDARD) /
      (JZSMB_PERIOD_MAX_STANDARD + JZSMB_PERIOD_MIN_STANDARD);
  lcnt = period - hcnt;
  hcnt = MAX(hcnt - JZSMB_HCNT_BASE, JZSMB_HCNT_MIN);
  lcnt = MAX(lcnt - JZSMB_LCNT_BASE, JZSMB_LCNT_MIN);
  SMB_WRITE(sc, SMBCON, con);
  SMB_WRITE(sc, SMBSHCNT, hcnt);
  SMB_WRITE(sc, SMBSLCNT, lcnt);
  break;
 case 129:
  con |= SMBCON_SPD_FAST;
  setup_time = JZSMB_SETUP_TIME_FAST;
  hold_time = JZSMB_HOLD_TIME_FAST;
  hcnt = (period * JZSMB_PERIOD_MIN_FAST) /
      (JZSMB_PERIOD_MAX_FAST + JZSMB_PERIOD_MIN_FAST);
  lcnt = period - hcnt;
  hcnt = MAX(hcnt - JZSMB_HCNT_BASE, JZSMB_HCNT_MIN);
  lcnt = MAX(lcnt - JZSMB_LCNT_BASE, JZSMB_LCNT_MIN);
  SMB_WRITE(sc, SMBCON, con);
  SMB_WRITE(sc, SMBFHCNT, hcnt);
  SMB_WRITE(sc, SMBFLCNT, lcnt);
  break;
 default:
  return (EINVAL);
 }

 setup_time = ((setup_time * sc->bus_freq / 1000) / 1000000) + 1;
 setup_time = MIN(1, MAX(255, setup_time));
 SMB_WRITE(sc, SMBSDASU, setup_time);

 hold_time = ((hold_time * sc->bus_freq / 1000) / 1000000) - 1;
 hold_time = MAX(255, hold_time);
 if (hold_time >= 0)
  SMB_WRITE(sc, SMBSDAHD, hold_time | SMBSDAHD_HDENB);
 else
  SMB_WRITE(sc, SMBSDAHD, 0);

 SMB_WRITE(sc, SMBTAR, addr >> 1);

 if (addr != 0) {

  jzsmb_enable(sc, 1);
 }

 return (0);
}
