
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct ahd_tmode_tstate {int dummy; } ;
struct ahd_softc {int features; } ;
struct TYPE_4__ {scalar_t__ period; scalar_t__ offset; scalar_t__ ppr_options; scalar_t__ width; } ;
struct TYPE_3__ {scalar_t__ width; scalar_t__ offset; scalar_t__ period; } ;
struct ahd_initiator_tinfo {TYPE_2__ goal; TYPE_1__ curr; } ;
struct ahd_devinfo {int role; int target; int our_scsiid; int channel; } ;


 int AHD_WIDE ;
 scalar_t__ MSG_EXT_WDTR_BUS_8_BIT ;
 int ROLE_TARGET ;
 int ahd_construct_ppr (struct ahd_softc*,struct ahd_devinfo*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ahd_construct_sdtr (struct ahd_softc*,struct ahd_devinfo*,scalar_t__,scalar_t__) ;
 int ahd_construct_wdtr (struct ahd_softc*,struct ahd_devinfo*,scalar_t__) ;
 int ahd_devlimited_syncrate (struct ahd_softc*,struct ahd_initiator_tinfo*,scalar_t__*,scalar_t__*,int ) ;
 struct ahd_initiator_tinfo* ahd_fetch_transinfo (struct ahd_softc*,int ,int ,int ,struct ahd_tmode_tstate**) ;
 int ahd_print_devinfo (struct ahd_softc*,struct ahd_devinfo*) ;
 int ahd_validate_offset (struct ahd_softc*,struct ahd_initiator_tinfo*,scalar_t__,scalar_t__*,scalar_t__,int ) ;
 scalar_t__ bootverbose ;
 int printf (char*) ;

__attribute__((used)) static void
ahd_build_transfer_msg(struct ahd_softc *ahd, struct ahd_devinfo *devinfo)
{





 struct ahd_initiator_tinfo *tinfo;
 struct ahd_tmode_tstate *tstate;
 int dowide;
 int dosync;
 int doppr;
 u_int period;
 u_int ppr_options;
 u_int offset;

 tinfo = ahd_fetch_transinfo(ahd, devinfo->channel, devinfo->our_scsiid,
        devinfo->target, &tstate);






 period = tinfo->goal.period;
 offset = tinfo->goal.offset;
 ppr_options = tinfo->goal.ppr_options;

 if (devinfo->role == ROLE_TARGET)
  ppr_options = 0;
 ahd_devlimited_syncrate(ahd, tinfo, &period,
    &ppr_options, devinfo->role);
 dowide = tinfo->curr.width != tinfo->goal.width;
 dosync = tinfo->curr.offset != offset || tinfo->curr.period != period;





 doppr = ppr_options != 0;

 if (!dowide && !dosync && !doppr) {
  dowide = tinfo->goal.width != MSG_EXT_WDTR_BUS_8_BIT;
  dosync = tinfo->goal.offset != 0;
 }

 if (!dowide && !dosync && !doppr) {




  if ((ahd->features & AHD_WIDE) != 0)
   dowide = 1;
  else
   dosync = 1;

  if (bootverbose) {
   ahd_print_devinfo(ahd, devinfo);
   printf("Ensuring async\n");
  }
 }

 if (devinfo->role == ROLE_TARGET)
  doppr = 0;
 if (doppr || (dosync && !dowide)) {

  offset = tinfo->goal.offset;
  ahd_validate_offset(ahd, tinfo, period, &offset,
        doppr ? tinfo->goal.width
       : tinfo->curr.width,
        devinfo->role);
  if (doppr) {
   ahd_construct_ppr(ahd, devinfo, period, offset,
       tinfo->goal.width, ppr_options);
  } else {
   ahd_construct_sdtr(ahd, devinfo, period, offset);
  }
 } else {
  ahd_construct_wdtr(ahd, devinfo, tinfo->goal.width);
 }
}
