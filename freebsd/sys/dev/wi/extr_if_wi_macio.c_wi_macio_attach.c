
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wi_softc {scalar_t__ wi_bus_type; scalar_t__ wi_gone; } ;
typedef int device_t ;


 int CSR_WRITE_2 (struct wi_softc*,int ,int) ;
 int WI_EVENT_ACK ;
 int WI_INT_EN ;
 int device_get_parent (int ) ;
 struct wi_softc* device_get_softc (int ) ;
 int macio_enable_wireless (int ,int) ;
 int wi_alloc (int ,int ) ;
 int wi_attach (int ) ;
 int wi_free (int ) ;

__attribute__((used)) static int
wi_macio_attach(device_t dev)
{
 struct wi_softc *sc;
 int error;

 sc = device_get_softc(dev);
 sc->wi_gone = 0;
 sc->wi_bus_type = 0;

 error = wi_alloc(dev, 0);
 if (error == 0) {
  macio_enable_wireless(device_get_parent(dev), 1);

  CSR_WRITE_2(sc, WI_INT_EN, 0);
  CSR_WRITE_2(sc, WI_EVENT_ACK, 0xFFFF);

  error = wi_attach(dev);
  if (error != 0)
   wi_free(dev);
 }
 return error;
}
