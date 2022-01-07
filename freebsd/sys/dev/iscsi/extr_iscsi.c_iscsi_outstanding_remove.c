
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int is_outstanding; int is_conn; } ;
struct iscsi_outstanding {int io_icl_prv; } ;


 int ISCSI_SESSION_LOCK_ASSERT (struct iscsi_session*) ;
 int TAILQ_REMOVE (int *,struct iscsi_outstanding*,int ) ;
 int icl_conn_task_done (int ,int ) ;
 int io_next ;
 int iscsi_outstanding_zone ;
 int uma_zfree (int ,struct iscsi_outstanding*) ;

__attribute__((used)) static void
iscsi_outstanding_remove(struct iscsi_session *is, struct iscsi_outstanding *io)
{

 ISCSI_SESSION_LOCK_ASSERT(is);

 icl_conn_task_done(is->is_conn, io->io_icl_prv);
 TAILQ_REMOVE(&is->is_outstanding, io, io_next);
 uma_zfree(iscsi_outstanding_zone, io);
}
