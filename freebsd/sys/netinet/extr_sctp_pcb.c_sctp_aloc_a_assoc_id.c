
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct sctpasochead {int dummy; } ;
struct TYPE_2__ {int in_asocid_hash; } ;
struct sctp_tcb {TYPE_1__ asoc; } ;
struct sctp_inpcb {int sctp_flags; scalar_t__ sctp_associd_counter; int hashasocidmark; struct sctpasochead* sctp_asocidhash; } ;
typedef int sctp_assoc_t ;


 int LIST_INSERT_HEAD (struct sctpasochead*,struct sctp_tcb*,int ) ;
 scalar_t__ SCTP_ALL_ASSOC ;
 size_t SCTP_PCBHASH_ASOC (scalar_t__,int ) ;
 int SCTP_PCB_FLAGS_SOCKET_ALLGONE ;
 struct sctp_tcb* sctp_findasoc_ep_asocid_locked (struct sctp_inpcb*,int ,int ) ;
 int sctp_tcbasocidhash ;

__attribute__((used)) static uint32_t
sctp_aloc_a_assoc_id(struct sctp_inpcb *inp, struct sctp_tcb *stcb)
{
 uint32_t id;
 struct sctpasochead *head;
 struct sctp_tcb *lstcb;

try_again:
 if (inp->sctp_flags & SCTP_PCB_FLAGS_SOCKET_ALLGONE) {

  return (0);
 }




 if (inp->sctp_associd_counter <= SCTP_ALL_ASSOC) {
  inp->sctp_associd_counter = SCTP_ALL_ASSOC + 1;
 }
 id = inp->sctp_associd_counter;
 inp->sctp_associd_counter++;
 lstcb = sctp_findasoc_ep_asocid_locked(inp, (sctp_assoc_t)id, 0);
 if (lstcb) {
  goto try_again;
 }
 head = &inp->sctp_asocidhash[SCTP_PCBHASH_ASOC(id, inp->hashasocidmark)];
 LIST_INSERT_HEAD(head, stcb, sctp_tcbasocidhash);
 stcb->asoc.in_asocid_hash = 1;
 return (id);
}
