
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vmctx {int dummy; } ;
struct TYPE_2__ {scalar_t__ bcnt; } ;
struct atkbdc_softc {int status; int curcmd; int ctrlbyte; int* ram; int outport; TYPE_1__ kbd; int ps2mouse_sc; int mtx; } ;


 int CTRL_CMD_FLAG ;
 int EALREADY ;
 int KBDS_AUX_BUFFER_FULL ;
 int KBDS_CTRL_FLAG ;
 int KBDS_KBD_BUFFER_FULL ;
 int KBD_DISABLE_AUX_PORT ;
 int KBD_DISABLE_KBD_PORT ;
 int VM_SUSPEND_RESET ;
 int assert (int) ;
 int atkbdc_assert_aux_intr (struct atkbdc_softc*) ;
 int atkbdc_assert_kbd_intr (struct atkbdc_softc*) ;
 int atkbdc_poll (struct atkbdc_softc*) ;
 int errno ;
 scalar_t__ ps2mouse_fifocnt (int ) ;
 int ps2mouse_toggle (int ,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int vm_suspend (struct vmctx*,int ) ;

__attribute__((used)) static int
atkbdc_sts_ctl_handler(struct vmctx *ctx, int vcpu, int in, int port,
    int bytes, uint32_t *eax, void *arg)
{
 struct atkbdc_softc *sc;
 int error, retval;

 if (bytes != 1)
  return (-1);

 sc = arg;
 retval = 0;

 pthread_mutex_lock(&sc->mtx);

 if (in) {

  *eax = sc->status;
  pthread_mutex_unlock(&sc->mtx);
  return (retval);
 }


 sc->curcmd = 0;
 sc->status |= KBDS_CTRL_FLAG;
 sc->ctrlbyte = 0;

 switch (*eax) {
 case 139:
  sc->ctrlbyte = CTRL_CMD_FLAG | sc->ram[0];
  break;
 case 133:
  sc->ctrlbyte = CTRL_CMD_FLAG | 0x55;
  break;
 case 134:
 case 132:
  sc->ctrlbyte = CTRL_CMD_FLAG | 0;
  break;
 case 138:
  sc->ctrlbyte = CTRL_CMD_FLAG | 0;
  break;
 case 137:
  sc->ctrlbyte = CTRL_CMD_FLAG | sc->outport;
  break;
 case 135:
 case 129:
 case 130:
 case 131:
  sc->curcmd = *eax;
  break;
 case 142:
  sc->ram[0] |= KBD_DISABLE_KBD_PORT;
  break;
 case 140:
  sc->ram[0] &= ~KBD_DISABLE_KBD_PORT;
  if (sc->kbd.bcnt > 0)
   sc->status |= KBDS_KBD_BUFFER_FULL;
  atkbdc_poll(sc);
  break;
 case 128:
  sc->curcmd = *eax;
  break;
 case 143:
  sc->ram[0] |= KBD_DISABLE_AUX_PORT;
  ps2mouse_toggle(sc->ps2mouse_sc, 0);
  sc->status &= ~(KBDS_AUX_BUFFER_FULL | KBDS_KBD_BUFFER_FULL);
  sc->outport &= ~KBDS_AUX_BUFFER_FULL;
  break;
 case 141:
  sc->ram[0] &= ~KBD_DISABLE_AUX_PORT;
  ps2mouse_toggle(sc->ps2mouse_sc, 1);
  if (ps2mouse_fifocnt(sc->ps2mouse_sc) > 0)
   sc->status |= KBDS_AUX_BUFFER_FULL | KBDS_KBD_BUFFER_FULL;
  break;
 case 136:
  error = vm_suspend(ctx, VM_SUSPEND_RESET);
  assert(error == 0 || errno == EALREADY);
  break;
 default:
  if (*eax >= 0x21 && *eax <= 0x3f) {

   int byten;

   byten = (*eax - 0x20) & 0x1f;
   sc->ctrlbyte = CTRL_CMD_FLAG | sc->ram[byten];
  }
  break;
 }

 pthread_mutex_unlock(&sc->mtx);

 if (sc->ctrlbyte != 0) {
  sc->status |= KBDS_KBD_BUFFER_FULL;
  sc->status &= ~KBDS_AUX_BUFFER_FULL;
  atkbdc_assert_kbd_intr(sc);
 } else if (ps2mouse_fifocnt(sc->ps2mouse_sc) > 0 &&
            (sc->ram[0] & KBD_DISABLE_AUX_PORT) == 0) {
  sc->status |= KBDS_AUX_BUFFER_FULL | KBDS_KBD_BUFFER_FULL;
  atkbdc_assert_aux_intr(sc);
 } else if (sc->kbd.bcnt > 0 && (sc->ram[0] & KBD_DISABLE_KBD_PORT) == 0) {
  sc->status |= KBDS_KBD_BUFFER_FULL;
  atkbdc_assert_kbd_intr(sc);
 }

 return (retval);
}
