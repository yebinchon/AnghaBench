
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ scsi_status; } ;
struct TYPE_7__ {int status; scalar_t__ io_type; int flags; TYPE_1__* ctl_private; } ;
struct TYPE_6__ {scalar_t__ task_action; } ;
union ctl_io {TYPE_4__ scsiio; TYPE_3__ io_hdr; TYPE_2__ taskio; } ;
struct cfumass_softc {int sc_current_status; int sc_queued; int * sc_ctl_io; } ;
struct TYPE_5__ {struct cfumass_softc* ptr; } ;


 int CFUMASS_DEBUG (struct cfumass_softc*,char*) ;
 int CFUMASS_LOCK (struct cfumass_softc*) ;
 int CFUMASS_T_STATUS ;
 int CFUMASS_UNLOCK (struct cfumass_softc*) ;
 int CTL_FLAG_ABORT ;
 int CTL_FLAG_ABORT_STATUS ;
 int CTL_FLAG_STATUS_SENT ;
 scalar_t__ CTL_IO_TASK ;
 size_t CTL_PRIV_FRONTEND ;
 int CTL_SCSI_ERROR ;
 int CTL_STATUS_MASK ;
 int CTL_STATUS_NONE ;
 int CTL_SUCCESS ;
 scalar_t__ CTL_TASK_I_T_NEXUS_RESET ;
 int KASSERT (int,char*) ;
 scalar_t__ SCSI_STATUS_CHECK_COND ;
 int cfumass_transfer_start (struct cfumass_softc*,int ) ;
 int ctl_free_io (union ctl_io*) ;
 int ctl_queue_sense (union ctl_io*) ;
 int refcount_release (int *) ;

__attribute__((used)) static void
cfumass_done(union ctl_io *io)
{
 struct cfumass_softc *sc;

 sc = io->io_hdr.ctl_private[CTL_PRIV_FRONTEND].ptr;

 CFUMASS_DEBUG(sc, "go");

 KASSERT(((io->io_hdr.status & CTL_STATUS_MASK) != CTL_STATUS_NONE),
     ("invalid CTL status %#x", io->io_hdr.status));
 KASSERT(sc->sc_ctl_io == ((void*)0),
     ("sc_ctl_io is %p, should be NULL", sc->sc_ctl_io));

 if (io->io_hdr.io_type == CTL_IO_TASK &&
     io->taskio.task_action == CTL_TASK_I_T_NEXUS_RESET) {



  ctl_free_io(io);
  return;
 }





 if (((io->io_hdr.flags & CTL_FLAG_ABORT) &&
      (io->io_hdr.flags & CTL_FLAG_ABORT_STATUS) == 0) ||
     (io->io_hdr.flags & CTL_FLAG_STATUS_SENT)) {
  ctl_free_io(io);
  return;
 }

 if ((io->io_hdr.status & CTL_STATUS_MASK) == CTL_SUCCESS)
  sc->sc_current_status = 0;
 else
  sc->sc_current_status = 1;


 if ((io->io_hdr.status & CTL_STATUS_MASK) == CTL_SCSI_ERROR &&
     io->scsiio.scsi_status == SCSI_STATUS_CHECK_COND)
  ctl_queue_sense(io);
 else
  ctl_free_io(io);

 CFUMASS_LOCK(sc);
 cfumass_transfer_start(sc, CFUMASS_T_STATUS);
 CFUMASS_UNLOCK(sc);

 refcount_release(&sc->sc_queued);
}
