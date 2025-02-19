
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * fingers; } ;
struct TYPE_6__ {int buttons; } ;
struct TYPE_8__ {int fwversion; int hwversion; int issemimt; int isclickpad; int hascrc; int haspressure; int ntracesx; int ntracesy; int hastrackpoint; int dpmmx; int dpmmy; int dptracex; int dptracey; int sizex; int sizey; } ;
struct psm_softc {TYPE_2__ elanaction; TYPE_1__ hw; TYPE_3__ elanhw; int kbdc; } ;
typedef enum probearg { ____Placeholder_probearg } probearg ;
typedef TYPE_3__ elantechhw_t ;
typedef int elanhw ;
typedef int KBDC ;


 int ELANTECH_CAPABILITIES ;
 int ELANTECH_FW_ID ;
 int ELANTECH_FW_VERSION ;
 scalar_t__ ELANTECH_HW_IS_V1 (int) ;
 int ELANTECH_MAGIC (int*) ;
 int ELANTECH_MAX_FINGERS ;
 int ELANTECH_RESOLUTION ;
 int ELANTECH_SAMPLE ;
 int FALSE ;
 int LOG_DEBUG ;
 int PROBE ;
 int PSM_FINGER_RESET (int ) ;
 int TRUE ;
 int VLOG (int,int ) ;
 int bzero (TYPE_3__*,int) ;
 scalar_t__ elantech_cmd (int ,int,int ,int*) ;
 scalar_t__ elantech_init (int ,TYPE_3__*) ;
 int elantech_init_synaptics (struct psm_softc*) ;
 int elantech_support ;
 int get_mouse_status (int ,int*,int ,int) ;
 void* imax (int,int) ;
 int nitems (int const**) ;
 int printf (char*,...) ;
 int set_mouse_scaling (int ,int) ;
 int verbose ;

__attribute__((used)) static int
enable_elantech(struct psm_softc *sc, enum probearg arg)
{
 static const int ic2hw[] =

     { 0, 0, 2, 0, 2, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 };
 static const int fw_sizes[][3] = {

  { 0x020030, 1152, 768 },
  { 0x020800, 1152, 768 },
  { 0x020b00, 1152, 768 },
  { 0x040215, 900, 500 },
  { 0x040216, 819, 405 },
  { 0x040219, 900, 500 },
 };
 elantechhw_t elanhw;
 int icversion, hwversion, xtr, i, id, resp[3], dpix, dpiy;
 KBDC kbdc = sc->kbdc;

 VLOG(3, (LOG_DEBUG, "elantech: BEGIN init\n"));

 set_mouse_scaling(kbdc, 1);
 set_mouse_scaling(kbdc, 1);
 set_mouse_scaling(kbdc, 1);
 if (get_mouse_status(kbdc, resp, 0, 3) != 3)
  return (FALSE);

 if (!ELANTECH_MAGIC(resp))
  return (FALSE);


 if (elantech_cmd(kbdc, 2, ELANTECH_FW_VERSION, resp))
  return (FALSE);

 bzero(&elanhw, sizeof(elanhw));

 elanhw.fwversion = (resp[0] << 16) | (resp[1] << 8) | resp[2];
 icversion = resp[0] & 0x0f;
 hwversion = ic2hw[icversion];

 if (verbose >= 2)
  printf("Elantech touchpad hardware v.%d firmware v.0x%06x\n",
      hwversion, elanhw.fwversion);

 if (ELANTECH_HW_IS_V1(elanhw.fwversion)) {
  printf ("  Unsupported touchpad hardware (v1)\n");
  return (FALSE);
 }
 if (hwversion == 0) {
  printf ("  Unknown touchpad hardware (firmware v.0x%06x)\n",
      elanhw.fwversion);
  return (FALSE);
 }


 elanhw.hwversion = hwversion;
 elanhw.issemimt = hwversion == 2;
 elanhw.isclickpad = (resp[1] & 0x10) != 0;
 elanhw.hascrc = (resp[1] & 0x40) != 0;
 elanhw.haspressure = elanhw.fwversion >= 0x020800;


 if (elantech_cmd(kbdc, hwversion, ELANTECH_CAPABILITIES, resp) != 0) {
  printf("  Failed to read capability bits\n");
  return (FALSE);
 }

 elanhw.ntracesx = imax(resp[1], 3);
 elanhw.ntracesy = imax(resp[2], 3);
 elanhw.hastrackpoint = (resp[0] & 0x80) != 0;


 switch (hwversion) {
 case 4:
  if (elantech_cmd(kbdc, hwversion, ELANTECH_RESOLUTION, resp)
      == 0) {
   dpix = (resp[1] & 0x0f) * 10 + 790;
   dpiy = ((resp[1] & 0xf0) >> 4) * 10 + 790;
   elanhw.dpmmx = (dpix * 10 + 5) / 254;
   elanhw.dpmmy = (dpiy * 10 + 5) / 254;
   break;
  }

 case 2:
 case 3:
  elanhw.dpmmx = elanhw.dpmmy = 32;
  break;
 }

 if (!elantech_support)
  return (FALSE);

 if (elantech_init(kbdc, &elanhw)) {
  printf("couldn't initialize elantech touchpad\n");
  return (FALSE);
 }






 elanhw.dptracex = elanhw.dptracey = 64;
 for (i = 0; i < nitems(fw_sizes); i++) {
  if (elanhw.fwversion == fw_sizes[i][0]) {
   elanhw.sizex = fw_sizes[i][1];
   elanhw.sizey = fw_sizes[i][2];
   goto found;
  }
 }
 if (elantech_cmd(kbdc, hwversion, ELANTECH_FW_ID, resp) != 0) {
  printf("  Failed to read touchpad size\n");
  elanhw.sizex = 10000;
  elanhw.sizey = 10000;
 } else if (hwversion == 2) {
  if ((elanhw.fwversion >> 16) == 0x14 && (resp[1] & 0x10) &&
      !elantech_cmd(kbdc, hwversion, ELANTECH_SAMPLE, resp)) {
   elanhw.dptracex = resp[1] / 2;
   elanhw.dptracey = resp[2] / 2;
  }
  xtr = ((elanhw.fwversion >> 8) == 0x0208) ? 1 : 2;
  elanhw.sizex = (elanhw.ntracesx - xtr) * elanhw.dptracex;
  elanhw.sizey = (elanhw.ntracesy - xtr) * elanhw.dptracey;
 } else {
  elanhw.sizex = (resp[0] & 0x0f) << 8 | resp[1];
  elanhw.sizey = (resp[0] & 0xf0) << 4 | resp[2];
  xtr = (elanhw.sizex % (elanhw.ntracesx - 2) == 0) ? 2 : 1;
  elanhw.dptracex = elanhw.sizex / (elanhw.ntracesx - xtr);
  elanhw.dptracey = elanhw.sizey / (elanhw.ntracesy - xtr);
 }
found:
 if (verbose >= 2) {
  printf("  Model information:\n");
  printf("   MaxX:       %d\n", elanhw.sizex);
  printf("   MaxY:       %d\n", elanhw.sizey);
  printf("   DpmmX:      %d\n", elanhw.dpmmx);
  printf("   DpmmY:      %d\n", elanhw.dpmmy);
  printf("   TracesX:    %d\n", elanhw.ntracesx);
  printf("   TracesY:    %d\n", elanhw.ntracesy);
  printf("   DptraceX:   %d\n", elanhw.dptracex);
  printf("   DptraceY:   %d\n", elanhw.dptracey);
  printf("   SemiMT:     %d\n", elanhw.issemimt);
  printf("   Clickpad:   %d\n", elanhw.isclickpad);
  printf("   Trackpoint: %d\n", elanhw.hastrackpoint);
  printf("   CRC:        %d\n", elanhw.hascrc);
  printf("   Pressure:   %d\n", elanhw.haspressure);
 }

 VLOG(3, (LOG_DEBUG, "elantech: END init\n"));

 if (arg == PROBE) {
  sc->elanhw = elanhw;
  sc->hw.buttons = 3;


  elantech_init_synaptics(sc);

  for (id = 0; id < ELANTECH_MAX_FINGERS; id++)
   PSM_FINGER_RESET(sc->elanaction.fingers[id]);
 }

 return (TRUE);
}
