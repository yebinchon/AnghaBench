
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_ic_softc {int ic_buf; } ;
typedef int device_t ;


 int M_DEVBUF ;
 struct vmbus_ic_softc* device_get_softc (int ) ;
 int free (int ,int ) ;
 int vmbus_chan_close (int ) ;
 int vmbus_get_channel (int ) ;

int
vmbus_ic_detach(device_t dev)
{
 struct vmbus_ic_softc *sc = device_get_softc(dev);

 vmbus_chan_close(vmbus_get_channel(dev));
 free(sc->ic_buf, M_DEVBUF);

 return (0);
}
