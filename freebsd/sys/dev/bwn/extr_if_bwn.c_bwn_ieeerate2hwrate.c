
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_softc {int sc_dev; } ;


 int BWN_CCK_RATE_11MB ;
 int BWN_CCK_RATE_1MB ;
 int BWN_CCK_RATE_2MB ;
 int BWN_CCK_RATE_5MB ;
 int BWN_OFDM_RATE_12MB ;
 int BWN_OFDM_RATE_18MB ;
 int BWN_OFDM_RATE_24MB ;
 int BWN_OFDM_RATE_36MB ;
 int BWN_OFDM_RATE_48MB ;
 int BWN_OFDM_RATE_54MB ;
 int BWN_OFDM_RATE_6MB ;
 int BWN_OFDM_RATE_9MB ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static int
bwn_ieeerate2hwrate(struct bwn_softc *sc, int rate)
{

 switch (rate) {

 case 12:
  return (BWN_OFDM_RATE_6MB);
 case 18:
  return (BWN_OFDM_RATE_9MB);
 case 24:
  return (BWN_OFDM_RATE_12MB);
 case 36:
  return (BWN_OFDM_RATE_18MB);
 case 48:
  return (BWN_OFDM_RATE_24MB);
 case 72:
  return (BWN_OFDM_RATE_36MB);
 case 96:
  return (BWN_OFDM_RATE_48MB);
 case 108:
  return (BWN_OFDM_RATE_54MB);

 case 2:
  return (BWN_CCK_RATE_1MB);
 case 4:
  return (BWN_CCK_RATE_2MB);
 case 11:
  return (BWN_CCK_RATE_5MB);
 case 22:
  return (BWN_CCK_RATE_11MB);
 }

 device_printf(sc->sc_dev, "unsupported rate %d\n", rate);
 return (BWN_CCK_RATE_1MB);
}
