
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct timespec {int dummy; } ;
struct jzsmb_softc {int dummy; } ;
struct iic_msg {int len; size_t* buf; } ;
typedef int device_t ;


 int DELAY (int) ;
 int EIO ;
 int JZSMB_TIMEOUT ;
 int SMBCON ;
 size_t SMBCON_STPHLD ;
 int SMBDC ;
 int SMBST ;
 size_t SMBST_TFNF ;
 int SMB_ASSERT_LOCKED (struct jzsmb_softc*) ;
 size_t SMB_READ (struct jzsmb_softc*,int ) ;
 int SMB_WRITE (struct jzsmb_softc*,int ,size_t) ;
 struct jzsmb_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,size_t) ;
 int getnanouptime (struct timespec*) ;
 int hz ;
 int timespecsub (struct timespec*,struct timespec*,struct timespec*) ;
 int tstohz (struct timespec*) ;

__attribute__((used)) static int
jzsmb_transfer_write(device_t dev, struct iic_msg *msg, int stop_hold)
{
 struct jzsmb_softc *sc;
 struct timespec start, diff;
 uint16_t con, resid;
 int timeo;

 sc = device_get_softc(dev);
 timeo = JZSMB_TIMEOUT * msg->len;

 SMB_ASSERT_LOCKED(sc);

 con = SMB_READ(sc, SMBCON);
 con |= SMBCON_STPHLD;
 SMB_WRITE(sc, SMBCON, con);

 getnanouptime(&start);
 for (resid = msg->len; resid > 0; resid--) {
  for (;;) {
   getnanouptime(&diff);
   timespecsub(&diff, &start, &diff);
   if ((SMB_READ(sc, SMBST) & SMBST_TFNF) != 0) {
    SMB_WRITE(sc, SMBDC,
        msg->buf[msg->len - resid]);
    break;
   } else
    DELAY((1000 * hz) / JZSMB_TIMEOUT);

   if (tstohz(&diff) >= timeo) {
    device_printf(dev,
        "write timeout (status=0x%02x)\n",
        SMB_READ(sc, SMBST));
    return (EIO);
   }
  }
 }

 if (!stop_hold) {
  con = SMB_READ(sc, SMBCON);
  con &= ~SMBCON_STPHLD;
  SMB_WRITE(sc, SMBCON, con);
 }

 return (0);
}
