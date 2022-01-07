
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dme_softc {int * dme_macaddr; int dme_dev; } ;


 int DME_PAR (int) ;
 int ETHER_ADDR_LEN ;
 char* device_get_name (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,char*,...) ;
 int dme_parse_macaddr (char*,int *) ;
 int dme_read_reg (struct dme_softc*,int ) ;
 char* kern_getenv (char*) ;
 int snprintf (char*,int,char*,char*,int) ;

__attribute__((used)) static void
dme_get_macaddr(struct dme_softc *sc)
{
 char devid_str[32];
 char *var;
 int i;


 snprintf(devid_str, 32, "hint.%s.%d.macaddr",
     device_get_name(sc->dme_dev),
     device_get_unit(sc->dme_dev));


 if ((var = kern_getenv(devid_str)) != ((void*)0)) {
  if (!dme_parse_macaddr(var, sc->dme_macaddr)) {
   device_printf(sc->dme_dev, "MAC address: %s (hints)\n", var);
   return;
  }
 }





 for (i = 0; i < ETHER_ADDR_LEN; i++)
  sc->dme_macaddr[i] = dme_read_reg(sc, DME_PAR(i));

 device_printf(sc->dme_dev, "MAC address %6D (existing)\n",
     sc->dme_macaddr, ":");
}
