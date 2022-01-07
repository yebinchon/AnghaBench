
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct ahc_tmode_tstate {int dummy; } ;
struct ahc_syncrate {int dummy; } ;
struct ahc_softc {int features; } ;
struct TYPE_4__ {scalar_t__ period; scalar_t__ offset; scalar_t__ ppr_options; scalar_t__ width; } ;
struct TYPE_3__ {scalar_t__ width; scalar_t__ offset; scalar_t__ period; } ;
struct ahc_initiator_tinfo {TYPE_2__ goal; TYPE_1__ curr; } ;
struct ahc_devinfo {int role; int target; int our_scsiid; int channel; } ;


 int AHC_WIDE ;
 scalar_t__ MSG_EXT_WDTR_BUS_8_BIT ;
 int ROLE_TARGET ;
 int ahc_construct_ppr (struct ahc_softc*,struct ahc_devinfo*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ahc_construct_sdtr (struct ahc_softc*,struct ahc_devinfo*,scalar_t__,scalar_t__) ;
 int ahc_construct_wdtr (struct ahc_softc*,struct ahc_devinfo*,scalar_t__) ;
 struct ahc_syncrate* ahc_devlimited_syncrate (struct ahc_softc*,struct ahc_initiator_tinfo*,scalar_t__*,scalar_t__*,int ) ;
 struct ahc_initiator_tinfo* ahc_fetch_transinfo (struct ahc_softc*,int ,int ,int ,struct ahc_tmode_tstate**) ;
 int ahc_print_devinfo (struct ahc_softc*,struct ahc_devinfo*) ;
 int ahc_validate_offset (struct ahc_softc*,struct ahc_initiator_tinfo*,struct ahc_syncrate*,scalar_t__*,scalar_t__,int ) ;
 scalar_t__ bootverbose ;
 int printf (char*) ;

__attribute__((used)) static void
ahc_build_transfer_msg(struct ahc_softc *ahc, struct ahc_devinfo *devinfo)
{





 struct ahc_initiator_tinfo *tinfo;
 struct ahc_tmode_tstate *tstate;
 struct ahc_syncrate *rate;
 int dowide;
 int dosync;
 int doppr;
 u_int period;
 u_int ppr_options;
 u_int offset;

 tinfo = ahc_fetch_transinfo(ahc, devinfo->channel, devinfo->our_scsiid,
        devinfo->target, &tstate);






 period = tinfo->goal.period;
 offset = tinfo->goal.offset;
 ppr_options = tinfo->goal.ppr_options;

 if (devinfo->role == ROLE_TARGET)
  ppr_options = 0;
 rate = ahc_devlimited_syncrate(ahc, tinfo, &period,
           &ppr_options, devinfo->role);
 dowide = tinfo->curr.width != tinfo->goal.width;
 dosync = tinfo->curr.offset != offset || tinfo->curr.period != period;





 doppr = ppr_options != 0;

 if (!dowide && !dosync && !doppr) {
  dowide = tinfo->goal.width != MSG_EXT_WDTR_BUS_8_BIT;
  dosync = tinfo->goal.offset != 0;
 }

 if (!dowide && !dosync && !doppr) {




  if ((ahc->features & AHC_WIDE) != 0)
   dowide = 1;
  else
   dosync = 1;

  if (bootverbose) {
   ahc_print_devinfo(ahc, devinfo);
   printf("Ensuring async\n");
  }
 }


 if (devinfo->role == ROLE_TARGET)
  doppr = 0;
 if (doppr || (dosync && !dowide)) {

  offset = tinfo->goal.offset;
  ahc_validate_offset(ahc, tinfo, rate, &offset,
        doppr ? tinfo->goal.width
       : tinfo->curr.width,
        devinfo->role);
  if (doppr) {
   ahc_construct_ppr(ahc, devinfo, period, offset,
       tinfo->goal.width, ppr_options);
  } else {
   ahc_construct_sdtr(ahc, devinfo, period, offset);
  }
 } else {
  ahc_construct_wdtr(ahc, devinfo, tinfo->goal.width);
 }
}
