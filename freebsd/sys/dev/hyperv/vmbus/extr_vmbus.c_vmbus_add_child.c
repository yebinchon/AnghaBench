
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_softc {int vmbus_dev; } ;
struct vmbus_channel {int * ch_dev; int ch_id; struct vmbus_softc* ch_vmbus; } ;
typedef int device_t ;


 int ENXIO ;
 int Giant ;
 int * device_add_child (int ,int *,int) ;
 int device_printf (int ,char*,int ) ;
 int device_probe_and_attach (int *) ;
 int device_set_ivars (int *,struct vmbus_channel*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
vmbus_add_child(struct vmbus_channel *chan)
{
 struct vmbus_softc *sc = chan->ch_vmbus;
 device_t parent = sc->vmbus_dev;

 mtx_lock(&Giant);

 chan->ch_dev = device_add_child(parent, ((void*)0), -1);
 if (chan->ch_dev == ((void*)0)) {
  mtx_unlock(&Giant);
  device_printf(parent, "device_add_child for chan%u failed\n",
      chan->ch_id);
  return (ENXIO);
 }
 device_set_ivars(chan->ch_dev, chan);
 device_probe_and_attach(chan->ch_dev);

 mtx_unlock(&Giant);
 return (0);
}
