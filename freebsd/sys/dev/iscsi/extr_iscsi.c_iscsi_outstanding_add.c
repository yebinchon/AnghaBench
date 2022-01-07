
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ccb {int csio; } ;
typedef int uint32_t ;
struct iscsi_session {int is_outstanding; int is_conn; } ;
struct iscsi_outstanding {union ccb* io_ccb; int io_initiator_task_tag; int io_icl_prv; } ;
struct icl_pdu {int dummy; } ;


 int ISCSI_SESSION_LOCK_ASSERT (struct iscsi_session*) ;
 int ISCSI_SESSION_WARN (struct iscsi_session*,char*,int) ;
 int KASSERT (int ,char*) ;
 int M_NOWAIT ;
 int M_ZERO ;
 int TAILQ_INSERT_TAIL (int *,struct iscsi_outstanding*,int ) ;
 int icl_conn_task_setup (int ,struct icl_pdu*,int *,int *,int *) ;
 int io_next ;
 int * iscsi_outstanding_find (struct iscsi_session*,int ) ;
 int iscsi_outstanding_zone ;
 struct iscsi_outstanding* uma_zalloc (int ,int) ;
 int uma_zfree (int ,struct iscsi_outstanding*) ;

__attribute__((used)) static struct iscsi_outstanding *
iscsi_outstanding_add(struct iscsi_session *is, struct icl_pdu *request,
    union ccb *ccb, uint32_t *initiator_task_tagp)
{
 struct iscsi_outstanding *io;
 int error;

 ISCSI_SESSION_LOCK_ASSERT(is);

 io = uma_zalloc(iscsi_outstanding_zone, M_NOWAIT | M_ZERO);
 if (io == ((void*)0)) {
  ISCSI_SESSION_WARN(is, "failed to allocate %zd bytes",
      sizeof(*io));
  return (((void*)0));
 }

 error = icl_conn_task_setup(is->is_conn, request, &ccb->csio,
     initiator_task_tagp, &io->io_icl_prv);
 if (error != 0) {
  ISCSI_SESSION_WARN(is,
      "icl_conn_task_setup() failed with error %d", error);
  uma_zfree(iscsi_outstanding_zone, io);
  return (((void*)0));
 }

 KASSERT(iscsi_outstanding_find(is, *initiator_task_tagp) == ((void*)0),
     ("initiator_task_tag 0x%x already added", *initiator_task_tagp));

 io->io_initiator_task_tag = *initiator_task_tagp;
 io->io_ccb = ccb;
 TAILQ_INSERT_TAIL(&is->is_outstanding, io, io_next);
 return (io);
}
