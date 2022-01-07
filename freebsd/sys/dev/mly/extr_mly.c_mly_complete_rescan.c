
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mly_softc {struct mly_btl** mly_btl; } ;
struct mly_ioctl_getphysdevinfovalid {int channel; int target; scalar_t__ state; int width; int speed; } ;
struct mly_ioctl_getlogdevinfovalid {scalar_t__ raid_level; scalar_t__ state; int logical_device_number; } ;
struct TYPE_7__ {int channel; int target; } ;
struct TYPE_6__ {int logdev; } ;
struct TYPE_8__ {TYPE_3__ phys; TYPE_2__ log; } ;
struct mly_command_ioctl {scalar_t__ sub_ioctl; TYPE_4__ addr; } ;
struct mly_command {scalar_t__ mc_status; int mc_length; scalar_t__ mc_data; TYPE_1__* mc_packet; struct mly_softc* mc_sc; } ;
struct mly_btl {scalar_t__ mb_flags; scalar_t__ mb_type; scalar_t__ mb_state; int mb_width; int mb_speed; } ;
typedef int btl ;
struct TYPE_5__ {int ioctl; } ;


 scalar_t__ MDACIOCTL_GETLOGDEVINFOVALID ;
 scalar_t__ MLY_BTL_LOGICAL ;
 scalar_t__ MLY_BTL_PHYSICAL ;
 scalar_t__ MLY_BTL_PROTECTED ;
 scalar_t__ MLY_DEVICE_STATE_UNCONFIGURED ;
 scalar_t__ MLY_DEVICE_TYPE_PHYSICAL ;
 int MLY_LOGDEV_BUS (struct mly_softc*,int ) ;
 int MLY_LOGDEV_TARGET (struct mly_softc*,int ) ;
 int M_DEVBUF ;
 int bzero (struct mly_btl*,int) ;
 int debug (int,char*,...) ;
 int debug_called (int) ;
 int free (scalar_t__,int ) ;
 int mly_cam_rescan_btl (struct mly_softc*,int,int) ;
 int mly_describe_code (int ,scalar_t__) ;
 int mly_printf (struct mly_softc*,char*,...) ;
 int mly_release_command (struct mly_command*) ;
 int mly_table_device_state ;
 int mly_table_device_type ;

__attribute__((used)) static void
mly_complete_rescan(struct mly_command *mc)
{
    struct mly_softc *sc = mc->mc_sc;
    struct mly_ioctl_getlogdevinfovalid *ldi;
    struct mly_ioctl_getphysdevinfovalid *pdi;
    struct mly_command_ioctl *mci;
    struct mly_btl btl, *btlp;
    int bus, target, rescan;

    debug_called(1);





    mci = (struct mly_command_ioctl *)&mc->mc_packet->ioctl;
    if (mci->sub_ioctl == MDACIOCTL_GETLOGDEVINFOVALID) {
 bus = MLY_LOGDEV_BUS(sc, mci->addr.log.logdev);
 target = MLY_LOGDEV_TARGET(sc, mci->addr.log.logdev);
    } else {
 bus = mci->addr.phys.channel;
 target = mci->addr.phys.target;
    }



    bzero(&btl, sizeof(btl));


    if (mc->mc_status == 0) {
 if (mc->mc_length == sizeof(*ldi)) {
     ldi = (struct mly_ioctl_getlogdevinfovalid *)mc->mc_data;
     if ((MLY_LOGDEV_BUS(sc, ldi->logical_device_number) != bus) ||
  (MLY_LOGDEV_TARGET(sc, ldi->logical_device_number) != target)) {
  mly_printf(sc, "WARNING: BTL rescan for %d:%d returned data for %d:%d instead\n",
      bus, target, MLY_LOGDEV_BUS(sc, ldi->logical_device_number),
      MLY_LOGDEV_TARGET(sc, ldi->logical_device_number));

     }
     btl.mb_flags = MLY_BTL_LOGICAL;
     btl.mb_type = ldi->raid_level;
     btl.mb_state = ldi->state;
     debug(1, "BTL rescan for %d returns %s, %s", ldi->logical_device_number,
    mly_describe_code(mly_table_device_type, ldi->raid_level),
    mly_describe_code(mly_table_device_state, ldi->state));
 } else if (mc->mc_length == sizeof(*pdi)) {
     pdi = (struct mly_ioctl_getphysdevinfovalid *)mc->mc_data;
     if ((pdi->channel != bus) || (pdi->target != target)) {
  mly_printf(sc, "WARNING: BTL rescan for %d:%d returned data for %d:%d instead\n",
      bus, target, pdi->channel, pdi->target);

     }
     btl.mb_flags = MLY_BTL_PHYSICAL;
     btl.mb_type = MLY_DEVICE_TYPE_PHYSICAL;
     btl.mb_state = pdi->state;
     btl.mb_speed = pdi->speed;
     btl.mb_width = pdi->width;
     if (pdi->state != MLY_DEVICE_STATE_UNCONFIGURED)
  sc->mly_btl[bus][target].mb_flags |= MLY_BTL_PROTECTED;
     debug(1, "BTL rescan for %d:%d returns %s", bus, target,
    mly_describe_code(mly_table_device_state, pdi->state));
 } else {
     mly_printf(sc, "BTL rescan result invalid\n");
 }
    }

    free(mc->mc_data, M_DEVBUF);
    mly_release_command(mc);




    rescan = 0;


    btlp = &sc->mly_btl[bus][target];
    if (btl.mb_flags != btlp->mb_flags) {
 debug(1, "flags changed, rescanning");
 rescan = 1;
    }






    *btlp = btl;




    if (rescan)
 mly_cam_rescan_btl(sc, bus, target);
}
