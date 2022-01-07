
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_tmode_tstate {int dummy; } ;
struct ahc_softc {int dummy; } ;
struct ahc_initiator_tinfo {int dummy; } ;
struct ahc_devinfo {int target; int our_scsiid; int channel; } ;


 int AHC_NEG_IF_NON_ASYNC ;
 struct ahc_initiator_tinfo* ahc_fetch_transinfo (struct ahc_softc*,int ,int ,int ,struct ahc_tmode_tstate**) ;
 int ahc_update_neg_request (struct ahc_softc*,struct ahc_devinfo*,struct ahc_tmode_tstate*,struct ahc_initiator_tinfo*,int ) ;

__attribute__((used)) static void
ahc_force_renegotiation(struct ahc_softc *ahc, struct ahc_devinfo *devinfo)
{
 struct ahc_initiator_tinfo *targ_info;
 struct ahc_tmode_tstate *tstate;

 targ_info = ahc_fetch_transinfo(ahc,
     devinfo->channel,
     devinfo->our_scsiid,
     devinfo->target,
     &tstate);
 ahc_update_neg_request(ahc, devinfo, tstate,
          targ_info, AHC_NEG_IF_NON_ASYNC);
}
