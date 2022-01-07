
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf_softc {int dummy; } ;


 int IIC_ETIMEOUT ;
 int PCF_ASSERT_LOCKED (struct pcf_softc*) ;
 int PIN ;
 int TIMEOUT ;
 int pcf_get_S1 (struct pcf_softc*) ;
 int printf (char*) ;

__attribute__((used)) static int
pcf_wait_byte(struct pcf_softc *sc)
{
 int counter = TIMEOUT;

 PCF_ASSERT_LOCKED(sc);
 while (counter--) {

  if ((pcf_get_S1(sc) & PIN) == 0)
   return (0);
 }





 return (IIC_ETIMEOUT);
}
