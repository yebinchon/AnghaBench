
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct slcompress {int last_recv; int last_xmit; int flags; struct cstate* last_cs; scalar_t__ rstate; struct cstate* tstate; } ;
struct cstate {size_t cs_id; struct cstate* cs_next; } ;


 int MAX_STATES ;
 int SLF_TOSS ;
 int bzero (char*,int) ;

void
sl_compress_init(struct slcompress *comp, int max_state)
{
 u_int i;
 struct cstate *tstate = comp->tstate;

 if (max_state == -1) {
  max_state = MAX_STATES - 1;
  bzero((char *)comp, sizeof(*comp));
 } else {

  bzero((char *)comp->tstate, sizeof(comp->tstate));
  bzero((char *)comp->rstate, sizeof(comp->rstate));
 }
   for (i = max_state; i > 0; --i) {
  tstate[i].cs_id = i;
  tstate[i].cs_next = &tstate[i - 1];
 }
 tstate[0].cs_next = &tstate[max_state];
 tstate[0].cs_id = 0;
 comp->last_cs = &tstate[0];
 comp->last_recv = 255;
 comp->last_xmit = 255;
 comp->flags = SLF_TOSS;
}
