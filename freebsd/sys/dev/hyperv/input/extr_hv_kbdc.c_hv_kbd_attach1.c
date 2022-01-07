
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vmbus_chan_callback_t ;
struct TYPE_4__ {int buf; int hs_chan; int buflen; } ;
typedef TYPE_1__ hv_kbd_sc ;
typedef int device_t ;


 int HV_BUFF_SIZE ;
 int HV_KBD_RINGBUFF_RECV_SZ ;
 int HV_KBD_RINGBUFF_SEND_SZ ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 TYPE_1__* device_get_softc (int ) ;
 int free (int ,int ) ;
 int malloc (int ,int ,int) ;
 int vmbus_chan_open (int ,int ,int ,int *,int ,int ,TYPE_1__*) ;
 int vmbus_chan_set_readbatch (int ,int) ;

__attribute__((used)) static int
hv_kbd_attach1(device_t dev, vmbus_chan_callback_t cb)
{
 int ret;
 hv_kbd_sc *sc;

        sc = device_get_softc(dev);
 sc->buflen = HV_BUFF_SIZE;
 sc->buf = malloc(sc->buflen, M_DEVBUF, M_WAITOK | M_ZERO);
 vmbus_chan_set_readbatch(sc->hs_chan, 0);
 ret = vmbus_chan_open(
  sc->hs_chan,
  HV_KBD_RINGBUFF_SEND_SZ,
  HV_KBD_RINGBUFF_RECV_SZ,
  ((void*)0), 0,
  cb,
  sc);
 if (ret != 0) {
  free(sc->buf, M_DEVBUF);
 }
 return (ret);
}
