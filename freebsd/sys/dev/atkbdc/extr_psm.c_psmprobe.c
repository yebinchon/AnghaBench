
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int rate; int resolution; int accelfactor; int packetsize; int * syncmask; int level; } ;
struct TYPE_4__ {int hwid; int buttons; int model; int type; int iftype; } ;
struct psm_softc {int unit; int config; int kbdc; TYPE_2__ mode; TYPE_2__ dflt_mode; int flags; TYPE_1__ hw; int muxport; int * intr; } ;
typedef int device_t ;
struct TYPE_6__ {int packetsize; int syncmask; int model; scalar_t__ (* probefunc ) (struct psm_softc*,int ) ;} ;


 scalar_t__ ALWAYS_RESTORE_CONTROLLER (int ) ;
 int ENXIO ;
 int FALSE ;
 int GENERIC_MOUSE_ENTRY ;
 int KBDC_ENABLE_AUX_PORT ;
 int KBDC_RID_AUX ;
 int KBD_AUX_CONTROL_BITS ;
 int KBD_DISABLE_AUX_INT ;
 int KBD_DISABLE_AUX_PORT ;
 int KBD_DISABLE_KBD_INT ;
 int KBD_DISABLE_KBD_PORT ;
 int KBD_ENABLE_AUX_PORT ;
 int KBD_KBD_CONTROL_BITS ;
 int MOUSE_IF_PS2 ;
 int MOUSE_MOUSE ;
 int MOUSE_PS2_PACKETSIZE ;
 int MOUSE_PS2_TAP ;
 int MOUSE_TRACKBALL ;
 int MOUSE_UNKNOWN ;
 int PROBE ;
 int PSMC_SET_DEFAULTS ;




 int PSM_CONFIG_ACCEL ;
 int PSM_CONFIG_FLAGS ;
 int PSM_CONFIG_FORCETAP ;
 int PSM_CONFIG_HOOKRESUME ;
 int PSM_CONFIG_IGNPORTERROR ;
 int PSM_CONFIG_INITAFTERSUSPEND ;
 int PSM_CONFIG_NOCHECKSYNC ;
 int PSM_CONFIG_NOIDPROBE ;
 int PSM_CONFIG_NORESET ;
 int PSM_CONFIG_RESOLUTION ;


 int PSM_LEVEL_BASE ;

 int PSM_NEED_SYNCBITS ;
 int PSM_NOMUX ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int TRUE ;
 int atkbdc_open (int) ;
 scalar_t__ bootverbose ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int,int *) ;
 int device_get_flags (int ) ;
 int device_get_parent (int ) ;
 struct psm_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int device_set_desc (int ,char*) ;
 int disable_aux_dev (int ) ;
 int empty_both_buffers (int ,int) ;
 int enable_aux_dev (int ) ;
 int endprobe (int) ;
 int get_aux_id (int ) ;
 int get_controller_command_byte (int ) ;
 int get_mouse_buttons (int ) ;
 int get_mouse_status (int ,int*,int ,int) ;
 int is_a_mouse (int) ;
 int kbdc_debug (int ) ;
 int kbdc_get_device_mask (int ) ;
 int kbdc_lock (int ,int ) ;
 int kbdc_set_device_mask (int ,int) ;
 char* model_name (int ) ;
 int printf (char*,int,...) ;
 int recover_from_error (int ) ;
 int reset_aux_dev (int ) ;
 int restore_controller (int ,int) ;
 int send_aux_command (int ,int ) ;
 int set_controller_command_byte (int ,int,int) ;
 void* set_mouse_resolution (int ,int) ;
 int set_mouse_sampling_rate (int ,int) ;
 int set_mouse_scaling (int ,int) ;
 scalar_t__ stub1 (struct psm_softc*,int ) ;
 int test_aux_port (int ) ;
 TYPE_3__* vendortype ;
 int verbose ;
 int write_controller_command (int ,int ) ;

__attribute__((used)) static int
psmprobe(device_t dev)
{
 int unit = device_get_unit(dev);
 struct psm_softc *sc = device_get_softc(dev);
 int stat[3];
 int command_byte;
 int mask;
 int rid;
 int i;






 rid = KBDC_RID_AUX;
 sc->intr = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid, RF_ACTIVE);
 if (sc->intr == ((void*)0)) {
  if (bootverbose)
   device_printf(dev, "unable to allocate IRQ\n");
  return (ENXIO);
 }
 bus_release_resource(dev, SYS_RES_IRQ, rid, sc->intr);

 sc->unit = unit;
 sc->kbdc = atkbdc_open(device_get_unit(device_get_parent(dev)));
 sc->config = device_get_flags(dev) & PSM_CONFIG_FLAGS;
 sc->flags = 0;
 sc->muxport = PSM_NOMUX;
 if (bootverbose)
  ++verbose;

 device_set_desc(dev, "PS/2 Mouse");

 if (!kbdc_lock(sc->kbdc, TRUE)) {
  printf("psm%d: unable to lock the controller.\n", unit);
  if (bootverbose)
   --verbose;
  return (ENXIO);
 }
 empty_both_buffers(sc->kbdc, 10);


 mask = kbdc_get_device_mask(sc->kbdc) & ~KBD_AUX_CONTROL_BITS;
 command_byte = get_controller_command_byte(sc->kbdc);
 if (verbose)
  printf("psm%d: current command byte:%04x\n", unit,
      command_byte);
 if (command_byte == -1) {

  printf("psm%d: unable to get the current command byte value.\n",
   unit);
  endprobe(ENXIO);
 }





 if (!set_controller_command_byte(sc->kbdc,
     KBD_KBD_CONTROL_BITS | KBD_AUX_CONTROL_BITS,
     KBD_DISABLE_KBD_PORT | KBD_DISABLE_KBD_INT |
     KBD_ENABLE_AUX_PORT | KBD_DISABLE_AUX_INT)) {




  if (ALWAYS_RESTORE_CONTROLLER(sc->kbdc))
   restore_controller(sc->kbdc, command_byte);
  printf("psm%d: unable to set the command byte.\n", unit);
  endprobe(ENXIO);
 }
 write_controller_command(sc->kbdc, KBDC_ENABLE_AUX_PORT);
 switch ((i = test_aux_port(sc->kbdc))) {
 case 1:
 case 2:
 case 3:
 case 132:
  if (verbose)
   printf("psm%d: strange result for test aux port "
       "(%d).\n", unit, i);

 case 0:
  break;
 case -1:
 default:
  recover_from_error(sc->kbdc);
  if (sc->config & PSM_CONFIG_IGNPORTERROR)
   break;
  if (ALWAYS_RESTORE_CONTROLLER(sc->kbdc))
   restore_controller(sc->kbdc, command_byte);
  if (verbose)
   printf("psm%d: the aux port is not functioning (%d).\n",
       unit, i);
  endprobe(ENXIO);
 }

 if (sc->config & PSM_CONFIG_NORESET) {




 } else {
  if (!reset_aux_dev(sc->kbdc)) {
   recover_from_error(sc->kbdc);
   if (ALWAYS_RESTORE_CONTROLLER(sc->kbdc))
    restore_controller(sc->kbdc, command_byte);
   if (verbose)
    printf("psm%d: failed to reset the aux "
        "device.\n", unit);
   endprobe(ENXIO);
  } else if (!reset_aux_dev(sc->kbdc)) {
   recover_from_error(sc->kbdc);
   if (verbose >= 2)
    printf("psm%d: failed to reset the aux device "
        "(2).\n", unit);
  }
 }







 if (!enable_aux_dev(sc->kbdc) || !disable_aux_dev(sc->kbdc)) {

  recover_from_error(sc->kbdc);
  if (ALWAYS_RESTORE_CONTROLLER(sc->kbdc))
   restore_controller(sc->kbdc, command_byte);
  if (verbose)
   printf("psm%d: failed to enable the aux device.\n",
       unit);
  endprobe(ENXIO);
 }


 if (get_mouse_status(sc->kbdc, stat, 0, 3) >= 3) {
  sc->dflt_mode.rate = sc->mode.rate = stat[2];
  sc->dflt_mode.resolution = sc->mode.resolution = stat[1];
 } else {
  sc->dflt_mode.rate = sc->mode.rate = -1;
  sc->dflt_mode.resolution = sc->mode.resolution = -1;
 }


 sc->hw.iftype = MOUSE_IF_PS2;


 sc->hw.hwid = get_aux_id(sc->kbdc);
 if (!is_a_mouse(sc->hw.hwid)) {
  if (ALWAYS_RESTORE_CONTROLLER(sc->kbdc))
   restore_controller(sc->kbdc, command_byte);
  if (verbose)
   printf("psm%d: unknown device type (%d).\n", unit,
       sc->hw.hwid);
  endprobe(ENXIO);
 }
 switch (sc->hw.hwid) {
 case 131:
  sc->hw.type = MOUSE_TRACKBALL;
  break;
 case 128:
 case 129:
 case 130:
 case 134:
 case 133:
  sc->hw.type = MOUSE_MOUSE;
  break;
 default:
  sc->hw.type = MOUSE_UNKNOWN;
  break;
 }

 if (sc->config & PSM_CONFIG_NOIDPROBE) {
  sc->hw.buttons = 2;
  i = GENERIC_MOUSE_ENTRY;
 } else {

  sc->hw.buttons = get_mouse_buttons(sc->kbdc);


  for (i = 0; vendortype[i].probefunc != ((void*)0); ++i)
   if ((*vendortype[i].probefunc)(sc, PROBE)) {
    if (verbose >= 2)
     printf("psm%d: found %s\n", unit,
         model_name(vendortype[i].model));
    break;
   }
 }

 sc->hw.model = vendortype[i].model;

 sc->dflt_mode.level = PSM_LEVEL_BASE;
 sc->dflt_mode.packetsize = MOUSE_PS2_PACKETSIZE;
 sc->dflt_mode.accelfactor = (sc->config & PSM_CONFIG_ACCEL) >> 4;
 if (sc->config & PSM_CONFIG_NOCHECKSYNC)
  sc->dflt_mode.syncmask[0] = 0;
 else
  sc->dflt_mode.syncmask[0] = vendortype[i].syncmask;
 if (sc->config & PSM_CONFIG_FORCETAP)
  sc->dflt_mode.syncmask[0] &= ~MOUSE_PS2_TAP;
 sc->dflt_mode.syncmask[1] = 0;
 sc->mode = sc->dflt_mode;
 sc->mode.packetsize = vendortype[i].packetsize;
 if (sc->config & PSM_CONFIG_RESOLUTION)
  sc->mode.resolution =
      set_mouse_resolution(sc->kbdc,
      (sc->config & PSM_CONFIG_RESOLUTION) - 1);
 else if (sc->mode.resolution >= 0)
  sc->mode.resolution =
      set_mouse_resolution(sc->kbdc, sc->dflt_mode.resolution);
 if (sc->mode.rate > 0)
  sc->mode.rate =
      set_mouse_sampling_rate(sc->kbdc, sc->dflt_mode.rate);
 set_mouse_scaling(sc->kbdc, 1);


 sc->flags |= PSM_NEED_SYNCBITS;







 if (get_mouse_status(sc->kbdc, stat, 0, 3) < 3)
  printf("psm%d: failed to get status.\n", unit);
 else {




  sc->dflt_mode.rate = sc->mode.rate = stat[2];
  sc->dflt_mode.resolution = sc->mode.resolution = stat[1];
 }


 if (!set_controller_command_byte(sc->kbdc,
     KBD_KBD_CONTROL_BITS | KBD_AUX_CONTROL_BITS,
     (command_byte & KBD_KBD_CONTROL_BITS) |
     KBD_DISABLE_AUX_PORT | KBD_DISABLE_AUX_INT)) {




  if (ALWAYS_RESTORE_CONTROLLER(sc->kbdc))
   restore_controller(sc->kbdc, command_byte);
  printf("psm%d: unable to set the command byte.\n", unit);
  endprobe(ENXIO);
 }


 kbdc_set_device_mask(sc->kbdc, mask | KBD_AUX_CONTROL_BITS);
 kbdc_lock(sc->kbdc, FALSE);
 return (0);
}
