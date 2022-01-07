
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct audit_pipe_entry {int ape_record_len; int * ape_record; } ;
struct TYPE_2__ {int si_note; } ;
struct audit_pipe {scalar_t__ ap_qlen; scalar_t__ ap_qlimit; int ap_qbyteslen; int ap_flags; int ap_cv; int ap_sigio; TYPE_1__ ap_selinfo; int ap_inserts; int ap_queue; int ap_drops; } ;


 int AUDIT_PIPE_ASYNC ;
 int AUDIT_PIPE_LOCK_ASSERT (struct audit_pipe*) ;
 int KNOTE_LOCKED (int *,int ) ;
 int M_AUDIT_PIPE_ENTRY ;
 int M_NOWAIT ;
 int M_ZERO ;
 int PSOCK ;
 int SIGIO ;
 int TAILQ_INSERT_TAIL (int *,struct audit_pipe_entry*,int ) ;
 int ape_queue ;
 int audit_pipe_drops ;
 int bcopy (void*,int *,int) ;
 int cv_broadcast (int *) ;
 int free (struct audit_pipe_entry*,int ) ;
 void* malloc (int,int ,int) ;
 int pgsigio (int *,int ,int ) ;
 int selwakeuppri (TYPE_1__*,int ) ;

__attribute__((used)) static void
audit_pipe_append(struct audit_pipe *ap, void *record, u_int record_len)
{
 struct audit_pipe_entry *ape;

 AUDIT_PIPE_LOCK_ASSERT(ap);

 if (ap->ap_qlen >= ap->ap_qlimit) {
  ap->ap_drops++;
  audit_pipe_drops++;
  return;
 }

 ape = malloc(sizeof(*ape), M_AUDIT_PIPE_ENTRY, M_NOWAIT | M_ZERO);
 if (ape == ((void*)0)) {
  ap->ap_drops++;
  audit_pipe_drops++;
  return;
 }

 ape->ape_record = malloc(record_len, M_AUDIT_PIPE_ENTRY, M_NOWAIT);
 if (ape->ape_record == ((void*)0)) {
  free(ape, M_AUDIT_PIPE_ENTRY);
  ap->ap_drops++;
  audit_pipe_drops++;
  return;
 }

 bcopy(record, ape->ape_record, record_len);
 ape->ape_record_len = record_len;

 TAILQ_INSERT_TAIL(&ap->ap_queue, ape, ape_queue);
 ap->ap_inserts++;
 ap->ap_qlen++;
 ap->ap_qbyteslen += ape->ape_record_len;
 selwakeuppri(&ap->ap_selinfo, PSOCK);
 KNOTE_LOCKED(&ap->ap_selinfo.si_note, 0);
 if (ap->ap_flags & AUDIT_PIPE_ASYNC)
  pgsigio(&ap->ap_sigio, SIGIO, 0);
 cv_broadcast(&ap->ap_cv);
}
