
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint16_t ;
typedef int u_int ;
struct wrq_cookie {int dummy; } ;
struct cpl_set_tcb_field {void* val; void* mask; void* word_cookie; void* reply_ctrl; } ;
struct TYPE_3__ {int abs_id; } ;
struct TYPE_4__ {int * ctrlq; TYPE_1__ fwq; } ;
struct adapter {TYPE_2__ sge; } ;


 int CPL_COOKIE_HASHFILTER ;
 int CPL_SET_TCB_FIELD ;
 int ENOMEM ;
 int INIT_TP_WR_MIT_CPL (struct cpl_set_tcb_field*,int ,int ) ;
 int V_COOKIE (int ) ;
 int V_NO_REPLY (int) ;
 int V_QUEUENO (int ) ;
 int V_WORD (int ) ;
 int bzero (struct cpl_set_tcb_field*,int) ;
 int commit_wrq_wr (int *,struct cpl_set_tcb_field*,struct wrq_cookie*) ;
 int howmany (int,int) ;
 void* htobe16 (int) ;
 void* htobe64 (int ) ;
 struct cpl_set_tcb_field* start_wrq_wr (int *,int ,struct wrq_cookie*) ;

__attribute__((used)) static int
set_tcb_field(struct adapter *sc, u_int tid, uint16_t word, uint64_t mask,
    uint64_t val, int no_reply)
{
 struct wrq_cookie cookie;
 struct cpl_set_tcb_field *req;

 req = start_wrq_wr(&sc->sge.ctrlq[0], howmany(sizeof(*req), 16), &cookie);
 if (req == ((void*)0))
  return (ENOMEM);
 bzero(req, sizeof(*req));
 INIT_TP_WR_MIT_CPL(req, CPL_SET_TCB_FIELD, tid);
 if (no_reply == 0) {
  req->reply_ctrl = htobe16(V_QUEUENO(sc->sge.fwq.abs_id) |
      V_NO_REPLY(0));
 } else
  req->reply_ctrl = htobe16(V_NO_REPLY(1));
 req->word_cookie = htobe16(V_WORD(word) | V_COOKIE(CPL_COOKIE_HASHFILTER));
 req->mask = htobe64(mask);
 req->val = htobe64(val);
 commit_wrq_wr(&sc->sge.ctrlq[0], req, &cookie);

 return (0);
}
