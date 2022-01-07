
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct pcf_softc {int pcf_addr; int pcf_slave_mode; } ;
typedef int device_t ;


 int ACK ;
 struct pcf_softc* DEVTOSOFTC (int ) ;
 int ENI ;
 int ES1 ;
 int ESO ;




 int PCF_DEFAULT_ADDR ;
 int PCF_LOCK (struct pcf_softc*) ;
 int PCF_UNLOCK (struct pcf_softc*) ;
 int PIN ;
 int SLAVE_RECEIVER ;
 int pcf_set_S0 (struct pcf_softc*,int) ;
 int pcf_set_S1 (struct pcf_softc*,int) ;

int
pcf_rst_card(device_t dev, u_char speed, u_char addr, u_char *oldaddr)
{
 struct pcf_softc *sc = DEVTOSOFTC(dev);

 PCF_LOCK(sc);
 if (oldaddr)
  *oldaddr = sc->pcf_addr;


 if (!addr)
  sc->pcf_addr = PCF_DEFAULT_ADDR;
 else
  sc->pcf_addr = addr;

 pcf_set_S1(sc, PIN);


 pcf_set_S0(sc, sc->pcf_addr >> 1);


 pcf_set_S1(sc, PIN|ES1);


 switch (speed) {
 case 129:
  pcf_set_S0(sc, 0x1b);
  break;

 case 131:
  pcf_set_S0(sc, 0x19);
  break;

 case 128:
 case 130:
 default:
  pcf_set_S0(sc, 0x18);
  break;
 }


 pcf_set_S1(sc, PIN|ESO|ENI|ACK);

 sc->pcf_slave_mode = SLAVE_RECEIVER;
 PCF_UNLOCK(sc);

 return (0);
}
