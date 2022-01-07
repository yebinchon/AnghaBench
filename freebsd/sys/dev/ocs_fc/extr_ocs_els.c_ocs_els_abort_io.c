
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {char* display_name; int send_abts; int ref; struct TYPE_14__* io_to_abort; int io_type; int cmd_ini; struct TYPE_14__* node; struct TYPE_14__* ocs; int * hio; int io_alloc_failed_count; struct TYPE_14__* xport; } ;
typedef TYPE_1__ ocs_xport_t ;
typedef TYPE_1__ ocs_t ;
typedef TYPE_1__ ocs_io_t ;
typedef int int32_t ;


 int OCS_IO_TYPE_ABORT ;
 int TRUE ;
 int ocs_assert (TYPE_1__*,int *) ;
 int ocs_atomic_add_return (int *,int) ;
 int ocs_els_abort_cb ;
 TYPE_1__* ocs_io_alloc (TYPE_1__*) ;
 int ocs_io_free (TYPE_1__*,TYPE_1__*) ;
 int ocs_log_debug (TYPE_1__*,char*) ;
 int ocs_log_err (TYPE_1__*,char*,int ) ;
 scalar_t__ ocs_ref_get_unless_zero (int *) ;
 int ocs_ref_put (int *) ;
 int ocs_scsi_io_dispatch_abort (TYPE_1__*,int ) ;

__attribute__((used)) static ocs_io_t *
ocs_els_abort_io(ocs_io_t *els, int send_abts)
{
 ocs_t *ocs;
 ocs_xport_t *xport;
 int32_t rc;
 ocs_io_t *abort_io = ((void*)0);

 ocs_assert(els, ((void*)0));
 ocs_assert(els->node, ((void*)0));
 ocs_assert(els->node->ocs, ((void*)0));

 ocs = els->node->ocs;
 ocs_assert(ocs->xport, ((void*)0));
 xport = ocs->xport;


 if ((ocs_ref_get_unless_zero(&els->ref) == 0)) {

  ocs_log_debug(ocs, "els no longer active\n");
  return ((void*)0);
 }


 abort_io = ocs_io_alloc(ocs);
 if (abort_io == ((void*)0)) {
  ocs_atomic_add_return(&xport->io_alloc_failed_count, 1);
 } else {
  ocs_assert(abort_io->hio == ((void*)0), ((void*)0));


  abort_io->ocs = ocs;
  abort_io->node = els->node;
  abort_io->cmd_ini = TRUE;


  abort_io->io_type = OCS_IO_TYPE_ABORT;
  abort_io->display_name = "abort_els";
  abort_io->io_to_abort = els;
  abort_io->send_abts = send_abts;


  if ((rc = ocs_scsi_io_dispatch_abort(abort_io, ocs_els_abort_cb))) {
   ocs_log_err(ocs, "ocs_scsi_io_dispatch failed: %d\n", rc);
   ocs_io_free(ocs, abort_io);
   abort_io = ((void*)0);
  }
 }


 if (abort_io == ((void*)0)) {
  ocs_ref_put(&els->ref);
 }
 return abort_io;
}
