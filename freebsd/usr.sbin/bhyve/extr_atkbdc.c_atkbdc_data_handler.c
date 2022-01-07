
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct vmctx {int dummy; } ;
struct atkbdc_softc {int curcmd; int ctrlbyte; int status; int* ram; int outport; int mtx; int ps2kbd_sc; int ps2mouse_sc; } ;







 int KBDS_AUX_BUFFER_FULL ;
 int KBDS_CTRL_FLAG ;
 int KBDS_KBD_BUFFER_FULL ;
 int KBDS_SYS_FLAG ;
 int KBD_SYS_FLAG_BIT ;
 int atkbdc_aux_poll (struct atkbdc_softc*) ;
 int atkbdc_dequeue_data (struct atkbdc_softc*,int*) ;
 int atkbdc_kbd_queue_data (struct atkbdc_softc*,int) ;
 int atkbdc_poll (struct atkbdc_softc*) ;
 int ps2kbd_write (int ,int) ;
 int ps2mouse_write (int ,int,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static int
atkbdc_data_handler(struct vmctx *ctx, int vcpu, int in, int port, int bytes,
    uint32_t *eax, void *arg)
{
 struct atkbdc_softc *sc;
 uint8_t buf;
 int retval;

 if (bytes != 1)
  return (-1);
 sc = arg;
 retval = 0;

 pthread_mutex_lock(&sc->mtx);
 if (in) {
  sc->curcmd = 0;
  if (sc->ctrlbyte != 0) {
   *eax = sc->ctrlbyte & 0xff;
   sc->ctrlbyte = 0;
  } else {

   atkbdc_dequeue_data(sc, &buf);
   *eax = buf;
  }

  sc->status &= ~KBDS_CTRL_FLAG;
  pthread_mutex_unlock(&sc->mtx);
  return (retval);
 }

 if (sc->status & KBDS_CTRL_FLAG) {



  switch (sc->curcmd) {
  case 132:
   sc->ram[0] = *eax;
   if (sc->ram[0] & KBD_SYS_FLAG_BIT)
    sc->status |= KBDS_SYS_FLAG;
   else
    sc->status &= ~KBDS_SYS_FLAG;
   break;
  case 129:
   sc->outport = *eax;
   break;
  case 128:
   ps2mouse_write(sc->ps2mouse_sc, *eax, 0);
   atkbdc_poll(sc);
   break;
  case 130:
   atkbdc_kbd_queue_data(sc, *eax);
   break;
  case 131:
   ps2mouse_write(sc->ps2mouse_sc, *eax, 1);
   sc->status |= (KBDS_AUX_BUFFER_FULL | KBDS_KBD_BUFFER_FULL);
   atkbdc_aux_poll(sc);
   break;
  default:

   if (sc->curcmd >= 0x61 && sc->curcmd <= 0x7f) {
    int byten;

    byten = (sc->curcmd - 0x60) & 0x1f;
    sc->ram[byten] = *eax & 0xff;
   }
   break;
  }

  sc->curcmd = 0;
  sc->status &= ~KBDS_CTRL_FLAG;

  pthread_mutex_unlock(&sc->mtx);
  return (retval);
 }




 ps2kbd_write(sc->ps2kbd_sc, *eax);
 atkbdc_poll(sc);

 pthread_mutex_unlock(&sc->mtx);

 return (retval);
}
