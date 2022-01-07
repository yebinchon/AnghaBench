
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct twsi_softc {int control_val; size_t sent_bytes; int recv_bytes; scalar_t__ transfer; int dev; int reg_control; scalar_t__ need_ack; void* error; TYPE_1__* msg; int reg_data; int reg_status; } ;
struct TYPE_2__ {int flags; int slave; int* buf; int len; } ;


 void* ENXIO ;
 void* ETIMEDOUT ;
 int IIC_M_NOSTOP ;
 int IIC_M_RD ;
 int LSB ;
 int TWSI_CONTROL_ACK ;
 int TWSI_CONTROL_IFLG ;
 int TWSI_CONTROL_INTEN ;
 int TWSI_CONTROL_STOP ;
 int TWSI_READ (struct twsi_softc*,int ) ;
 int TWSI_WRITE (struct twsi_softc*,int ,int) ;
 int debugf (int ,char*,...) ;
 int wakeup (struct twsi_softc*) ;

__attribute__((used)) static void
twsi_intr(void *arg)
{
 struct twsi_softc *sc;
 uint32_t status;
 int transfer_done = 0;

 sc = arg;

 debugf(sc->dev, "Got interrupt\n");

 while (TWSI_READ(sc, sc->reg_control) & TWSI_CONTROL_IFLG) {
  status = TWSI_READ(sc, sc->reg_status);
  debugf(sc->dev, "status=%x\n", status);

  switch (status) {
  case 128:
  case 129:

   debugf(sc->dev, "Send the address\n");

   if (sc->msg->flags & IIC_M_RD)
    TWSI_WRITE(sc, sc->reg_data,
        sc->msg->slave | LSB);
   else
    TWSI_WRITE(sc, sc->reg_data,
        sc->msg->slave & ~LSB);

   TWSI_WRITE(sc, sc->reg_control, sc->control_val);
   break;

  case 134:
   debugf(sc->dev, "Ack received after transmitting the address\n");

   sc->sent_bytes = 0;
   debugf(sc->dev, "Sending byte 0 = %x\n", sc->msg->buf[0]);
   TWSI_WRITE(sc, sc->reg_data, sc->msg->buf[0]);

   TWSI_WRITE(sc, sc->reg_control, sc->control_val);
   break;

  case 136:
   debugf(sc->dev, "Ack received after transmitting the address\n");
   sc->recv_bytes = 0;

   TWSI_WRITE(sc, sc->reg_control, sc->control_val);
   break;

  case 133:
  case 135:
   debugf(sc->dev, "No ack received after transmitting the address\n");
   sc->transfer = 0;
   sc->error = ETIMEDOUT;
   sc->control_val = 0;
   wakeup(sc);
   break;

  case 130:
   debugf(sc->dev, "Ack received after transmitting data\n");
   if (sc->sent_bytes++ == (sc->msg->len - 1)) {
    debugf(sc->dev, "Done sending all the bytes\n");

    if (!(sc->msg->flags & IIC_M_NOSTOP)) {
     debugf(sc->dev, "Done TX data, send stop\n");
     TWSI_WRITE(sc, sc->reg_control,
       sc->control_val | TWSI_CONTROL_STOP);
    } else {
     sc->control_val &= ~TWSI_CONTROL_INTEN;
     TWSI_WRITE(sc, sc->reg_control,
         sc->control_val);
    }
    transfer_done = 1;
   } else {
    debugf(sc->dev, "Sending byte %d = %x\n",
        sc->sent_bytes,
        sc->msg->buf[sc->sent_bytes]);
    TWSI_WRITE(sc, sc->reg_data,
        sc->msg->buf[sc->sent_bytes]);
    TWSI_WRITE(sc, sc->reg_control,
        sc->control_val);
   }

   break;
  case 132:
   debugf(sc->dev, "Ack received after receiving data\n");
   debugf(sc->dev, "msg_len=%d recv_bytes=%d\n", sc->msg->len, sc->recv_bytes);
   sc->msg->buf[sc->recv_bytes++] = TWSI_READ(sc, sc->reg_data);


   if (sc->msg->len - sc->recv_bytes == 1)
    sc->control_val &= ~TWSI_CONTROL_ACK;
   TWSI_WRITE(sc, sc->reg_control, sc->control_val);
   break;

  case 131:
   if (sc->msg->len - sc->recv_bytes == 1) {
    sc->msg->buf[sc->recv_bytes++] = TWSI_READ(sc, sc->reg_data);
    debugf(sc->dev, "Done RX data, send stop (2)\n");
    if (!(sc->msg->flags & IIC_M_NOSTOP))
     TWSI_WRITE(sc, sc->reg_control,
       sc->control_val | TWSI_CONTROL_STOP);
   } else {
    debugf(sc->dev, "No ack when receiving data\n");
    sc->error = ENXIO;
    sc->control_val = 0;
   }
   sc->transfer = 0;
   transfer_done = 1;
   break;

  default:
   debugf(sc->dev, "status=%x hot handled\n", status);
   sc->transfer = 0;
   sc->error = ENXIO;
   sc->control_val = 0;
   wakeup(sc);
   break;
  }

  if (sc->need_ack)
   TWSI_WRITE(sc, sc->reg_control,
       sc->control_val | TWSI_CONTROL_IFLG);
 }

 debugf(sc->dev, "Done with interrupts\n");
 if (transfer_done == 1) {
  sc->transfer = 0;
  wakeup(sc);
 }
}
