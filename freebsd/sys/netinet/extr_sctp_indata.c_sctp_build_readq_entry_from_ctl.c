
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_queued_to_read {int fsn_included; int port_from; int stcb; TYPE_1__* whoFrom; int sinfo_assoc_id; int sinfo_cumtsn; int sinfo_tsn; int sinfo_context; int sinfo_ppid; int sinfo_flags; int mid; int top_fsn; int reasm; int sinfo_stream; } ;
struct TYPE_2__ {int ref_count; } ;


 int TAILQ_INIT (int *) ;
 int atomic_add_int (int *,int) ;
 int memset (struct sctp_queued_to_read*,int ,int) ;

__attribute__((used)) static void
sctp_build_readq_entry_from_ctl(struct sctp_queued_to_read *nc, struct sctp_queued_to_read *control)
{
 memset(nc, 0, sizeof(struct sctp_queued_to_read));
 nc->sinfo_stream = control->sinfo_stream;
 nc->mid = control->mid;
 TAILQ_INIT(&nc->reasm);
 nc->top_fsn = control->top_fsn;
 nc->mid = control->mid;
 nc->sinfo_flags = control->sinfo_flags;
 nc->sinfo_ppid = control->sinfo_ppid;
 nc->sinfo_context = control->sinfo_context;
 nc->fsn_included = 0xffffffff;
 nc->sinfo_tsn = control->sinfo_tsn;
 nc->sinfo_cumtsn = control->sinfo_cumtsn;
 nc->sinfo_assoc_id = control->sinfo_assoc_id;
 nc->whoFrom = control->whoFrom;
 atomic_add_int(&nc->whoFrom->ref_count, 1);
 nc->stcb = control->stcb;
 nc->port_from = control->port_from;
}
