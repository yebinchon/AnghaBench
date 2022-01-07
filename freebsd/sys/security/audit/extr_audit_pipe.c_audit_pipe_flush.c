
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_pipe_entry {scalar_t__ ape_record_len; } ;
struct audit_pipe {scalar_t__ ap_qbyteslen; scalar_t__ ap_qlen; scalar_t__ ap_qoffset; int ap_queue; } ;


 int AUDIT_PIPE_LOCK_ASSERT (struct audit_pipe*) ;
 int KASSERT (int,char*) ;
 struct audit_pipe_entry* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct audit_pipe_entry*,int ) ;
 int ape_queue ;
 int audit_pipe_entry_free (struct audit_pipe_entry*) ;

__attribute__((used)) static void
audit_pipe_flush(struct audit_pipe *ap)
{
 struct audit_pipe_entry *ape;

 AUDIT_PIPE_LOCK_ASSERT(ap);

 while ((ape = TAILQ_FIRST(&ap->ap_queue)) != ((void*)0)) {
  TAILQ_REMOVE(&ap->ap_queue, ape, ape_queue);
  ap->ap_qbyteslen -= ape->ape_record_len;
  audit_pipe_entry_free(ape);
  ap->ap_qlen--;
 }
 ap->ap_qoffset = 0;

 KASSERT(ap->ap_qlen == 0, ("audit_pipe_free: ap_qbyteslen"));
 KASSERT(ap->ap_qbyteslen == 0, ("audit_pipe_flush: ap_qbyteslen"));
}
