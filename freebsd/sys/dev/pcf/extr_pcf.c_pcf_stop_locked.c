
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf_softc {scalar_t__ pcf_started; } ;


 int ACK ;
 int ENI ;
 int ESO ;
 int PCF_ASSERT_LOCKED (struct pcf_softc*) ;
 int PIN ;
 int STO ;
 int dev ;
 int device_printf (int ,char*) ;
 int pcf_set_S1 (struct pcf_softc*,int) ;

__attribute__((used)) static void
pcf_stop_locked(struct pcf_softc *sc)
{

 PCF_ASSERT_LOCKED(sc);
 if (sc->pcf_started) {

  pcf_set_S1(sc, PIN|ESO|ENI|STO|ACK);

  sc->pcf_started = 0;
 }
}
