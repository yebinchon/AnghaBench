
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mps_softc {int mps_flags; scalar_t__ io_cmds_active; scalar_t__ io_cmds_highwater; int mps_mtx; } ;
struct TYPE_7__ {int High; int Low; } ;
struct TYPE_6__ {int SMID; } ;
struct TYPE_8__ {TYPE_2__ Words; TYPE_1__ Default; } ;
struct mps_command {scalar_t__ cm_state; TYPE_3__ cm_desc; int cm_ccb; } ;
struct TYPE_9__ {int high; int low; } ;
struct TYPE_10__ {TYPE_4__ u; int word; } ;
typedef TYPE_5__ reply_descriptor ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int MPI2_REQUEST_DESCRIPTOR_POST_HIGH_OFFSET ;
 int MPI2_REQUEST_DESCRIPTOR_POST_LOW_OFFSET ;
 scalar_t__ MPS_CM_STATE_BUSY ;
 scalar_t__ MPS_CM_STATE_INQUEUE ;
 int MPS_FLAGS_ATTACH_DONE ;
 int MPS_FLAGS_SHUTDOWN ;
 int MPS_FUNCTRACE (struct mps_softc*) ;
 int MPS_TRACE ;
 int htole64 (int ) ;
 int mps_dprint (struct mps_softc*,int ,char*,int ,struct mps_command*,int ) ;
 int mps_regwrite (struct mps_softc*,int ,int ) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
mps_enqueue_request(struct mps_softc *sc, struct mps_command *cm)
{
 reply_descriptor rd;
 MPS_FUNCTRACE(sc);
 mps_dprint(sc, MPS_TRACE, "SMID %u cm %p ccb %p\n",
     cm->cm_desc.Default.SMID, cm, cm->cm_ccb);

 if (sc->mps_flags & MPS_FLAGS_ATTACH_DONE && !(sc->mps_flags & MPS_FLAGS_SHUTDOWN))
  mtx_assert(&sc->mps_mtx, MA_OWNED);

 if (++sc->io_cmds_active > sc->io_cmds_highwater)
  sc->io_cmds_highwater++;
 rd.u.low = cm->cm_desc.Words.Low;
 rd.u.high = cm->cm_desc.Words.High;
 rd.word = htole64(rd.word);

 KASSERT(cm->cm_state == MPS_CM_STATE_BUSY, ("command not busy\n"));
 cm->cm_state = MPS_CM_STATE_INQUEUE;


 mps_regwrite(sc, MPI2_REQUEST_DESCRIPTOR_POST_LOW_OFFSET,
     rd.u.low);
 mps_regwrite(sc, MPI2_REQUEST_DESCRIPTOR_POST_HIGH_OFFSET,
     rd.u.high);
}
