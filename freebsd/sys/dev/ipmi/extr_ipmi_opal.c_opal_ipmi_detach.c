
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_ipmi_softc {int sc_msg; } ;
typedef int device_t ;


 int M_IPMI ;
 struct opal_ipmi_softc* device_get_softc (int ) ;
 int free (int ,int ) ;
 int ipmi_detach (int ) ;

__attribute__((used)) static int
opal_ipmi_detach(device_t dev)
{
 struct opal_ipmi_softc *sc;
 int err;

 sc = device_get_softc(dev);
 err = ipmi_detach(dev);
 if (err == 0)
  free(sc->sc_msg, M_IPMI);

 return (err);
}
