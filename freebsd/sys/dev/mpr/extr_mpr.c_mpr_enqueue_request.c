
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mpr_softc {int mpr_flags; scalar_t__ io_cmds_active; scalar_t__ io_cmds_highwater; scalar_t__ atomic_desc_capable; int mpr_mtx; } ;
struct TYPE_7__ {int High; int Low; } ;
struct TYPE_6__ {int SMID; } ;
struct TYPE_8__ {TYPE_2__ Words; TYPE_1__ Default; } ;
struct mpr_command {scalar_t__ cm_state; TYPE_3__ cm_desc; int cm_ccb; } ;
struct TYPE_9__ {int high; int low; } ;
struct TYPE_10__ {TYPE_4__ u; int word; } ;
typedef TYPE_5__ request_descriptor ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int MPI26_ATOMIC_REQUEST_DESCRIPTOR_POST_OFFSET ;
 int MPI2_REQUEST_DESCRIPTOR_POST_HIGH_OFFSET ;
 int MPI2_REQUEST_DESCRIPTOR_POST_LOW_OFFSET ;
 scalar_t__ MPR_CM_STATE_BUSY ;
 scalar_t__ MPR_CM_STATE_INQUEUE ;
 int MPR_FLAGS_ATTACH_DONE ;
 int MPR_FLAGS_SHUTDOWN ;
 int MPR_FUNCTRACE (struct mpr_softc*) ;
 int MPR_TRACE ;
 int htole64 (int ) ;
 int mpr_dprint (struct mpr_softc*,int ,char*,int ,struct mpr_command*,int ) ;
 int mpr_regwrite (struct mpr_softc*,int ,int ) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
mpr_enqueue_request(struct mpr_softc *sc, struct mpr_command *cm)
{
 request_descriptor rd;

 MPR_FUNCTRACE(sc);
 mpr_dprint(sc, MPR_TRACE, "SMID %u cm %p ccb %p\n",
     cm->cm_desc.Default.SMID, cm, cm->cm_ccb);

 if (sc->mpr_flags & MPR_FLAGS_ATTACH_DONE && !(sc->mpr_flags &
     MPR_FLAGS_SHUTDOWN))
  mtx_assert(&sc->mpr_mtx, MA_OWNED);

 if (++sc->io_cmds_active > sc->io_cmds_highwater)
  sc->io_cmds_highwater++;

 KASSERT(cm->cm_state == MPR_CM_STATE_BUSY, ("command not busy\n"));
 cm->cm_state = MPR_CM_STATE_INQUEUE;

 if (sc->atomic_desc_capable) {
  rd.u.low = cm->cm_desc.Words.Low;
  mpr_regwrite(sc, MPI26_ATOMIC_REQUEST_DESCRIPTOR_POST_OFFSET,
      rd.u.low);
 } else {
  rd.u.low = cm->cm_desc.Words.Low;
  rd.u.high = cm->cm_desc.Words.High;
  rd.word = htole64(rd.word);
  mpr_regwrite(sc, MPI2_REQUEST_DESCRIPTOR_POST_LOW_OFFSET,
      rd.u.low);
  mpr_regwrite(sc, MPI2_REQUEST_DESCRIPTOR_POST_HIGH_OFFSET,
      rd.u.high);
 }
}
