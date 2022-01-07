
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf; } ;
typedef TYPE_1__ hv_kbd_sc ;
typedef int device_t ;


 int M_DEVBUF ;
 TYPE_1__* device_get_softc (int ) ;
 int free (int ,int ) ;
 int vmbus_chan_close (int ) ;
 int vmbus_get_channel (int ) ;

__attribute__((used)) static int
hv_kbd_detach1(device_t dev)
{
 hv_kbd_sc *sc = device_get_softc(dev);
 vmbus_chan_close(vmbus_get_channel(dev));
 free(sc->buf, M_DEVBUF);
 return (0);
}
