
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msgdma_softc {int dummy; } ;
typedef int device_t ;


 struct msgdma_softc* device_get_softc (int ) ;

__attribute__((used)) static int
msgdma_detach(device_t dev)
{
 struct msgdma_softc *sc;

 sc = device_get_softc(dev);

 return (0);
}
