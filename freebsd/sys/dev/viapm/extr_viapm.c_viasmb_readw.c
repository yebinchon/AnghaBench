
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct viapm_softc {int dummy; } ;
typedef int device_t ;


 int LSB ;
 int SMBHADDR ;
 int SMBHCMD ;
 int SMBHCTRL ;
 char SMBHCTRL_START ;
 char SMBHCTRL_WORD ;
 int SMBHDATA0 ;
 int SMBHDATA1 ;
 int SMB_EBUSY ;
 int SMB_ENOERR ;
 int VIAPM_DEBUG (int ) ;
 int VIAPM_INB (int ) ;
 int VIAPM_LOCK (struct viapm_softc*) ;
 int VIAPM_OUTB (int ,char) ;
 int VIAPM_UNLOCK (struct viapm_softc*) ;
 scalar_t__ device_get_softc (int ) ;
 int printf (char*,int,char,short,int) ;
 scalar_t__ viapm_busy (struct viapm_softc*) ;
 int viapm_clear (struct viapm_softc*) ;
 int viapm_wait (struct viapm_softc*) ;

__attribute__((used)) static int
viasmb_readw(device_t dev, u_char slave, char cmd, short *word)
{
 struct viapm_softc *viapm = (struct viapm_softc *)device_get_softc(dev);
 int error;
 u_char high, low;

 VIAPM_LOCK(viapm);
 viapm_clear(viapm);
 if (viapm_busy(viapm)) {
  VIAPM_UNLOCK(viapm);
  return (SMB_EBUSY);
 }

 VIAPM_OUTB(SMBHADDR, slave | LSB);
 VIAPM_OUTB(SMBHCMD, cmd);

 VIAPM_OUTB(SMBHCTRL, SMBHCTRL_START | SMBHCTRL_WORD);

 if ((error = viapm_wait(viapm)) == SMB_ENOERR) {
  low = VIAPM_INB(SMBHDATA0);
  high = VIAPM_INB(SMBHDATA1);

  *word = ((high & 0xff) << 8) | (low & 0xff);
 }

 VIAPM_DEBUG(printf("viapm: READW from 0x%x, cmd=0x%x, word=0x%x, error=0x%x\n", slave, cmd, *word, error));
 VIAPM_UNLOCK(viapm);

 return (error);
}
