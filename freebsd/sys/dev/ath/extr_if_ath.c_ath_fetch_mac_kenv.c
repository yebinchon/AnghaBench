
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ath_softc {int sc_dev; } ;


 int ETHER_ADDR_LEN ;
 char* device_get_name (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,char*) ;
 int freeenv (char*) ;
 char* kern_getenv (char*) ;
 int snprintf (char*,int,char*,char*,int) ;
 int sscanf (char*,char*,int *,int *,int *,int *,int *,int *) ;

__attribute__((used)) static int
ath_fetch_mac_kenv(struct ath_softc *sc, uint8_t *macaddr)
{
 char devid_str[32];
 int local_mac = 0;
 char *local_macstr;
 snprintf(devid_str, 32, "hint.%s.%d.macaddr",
     device_get_name(sc->sc_dev),
     device_get_unit(sc->sc_dev));

 if ((local_macstr = kern_getenv(devid_str)) != ((void*)0)) {
  uint32_t tmpmac[ETHER_ADDR_LEN];
  int count;
  int i;


  device_printf(sc->sc_dev,
      "Overriding MAC address from environment: '%s'\n",
      local_macstr);


  count = sscanf(local_macstr, "%x%*c%x%*c%x%*c%x%*c%x%*c%x",
      &tmpmac[0], &tmpmac[1],
      &tmpmac[2], &tmpmac[3],
      &tmpmac[4], &tmpmac[5]);
  if (count == 6) {

   local_mac = 1;
   for (i = 0; i < ETHER_ADDR_LEN; i++)
    macaddr[i] = tmpmac[i];
  }

  freeenv(local_macstr);
  local_macstr = ((void*)0);
 }

 if (local_mac)
  return (0);
 return (-1);
}
