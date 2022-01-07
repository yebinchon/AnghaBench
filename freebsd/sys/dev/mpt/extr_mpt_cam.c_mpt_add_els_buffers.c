
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct mpt_softc {scalar_t__ is_fc; int els_cmds_allocated; TYPE_1__** els_cmd_ptrs; } ;
struct TYPE_6__ {int state; } ;
typedef TYPE_1__ request_t ;


 int FALSE ;
 int MPT_MAX_ELS ;
 int MPT_PRT_INFO ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int REQ_STATE_LOCKED ;
 int TRUE ;
 int free (TYPE_1__**,int ) ;
 TYPE_1__** malloc (int,int ,int) ;
 int mpt_fc_post_els (struct mpt_softc*,TYPE_1__*,int) ;
 TYPE_1__* mpt_get_request (struct mpt_softc*,int) ;
 int mpt_lprt (struct mpt_softc*,int ,char*,int,int) ;
 int mpt_prt (struct mpt_softc*,char*) ;

__attribute__((used)) static int
mpt_add_els_buffers(struct mpt_softc *mpt)
{
 int i;

 if (mpt->is_fc == 0) {
  return (TRUE);
 }

 if (mpt->els_cmds_allocated) {
  return (TRUE);
 }

 mpt->els_cmd_ptrs = malloc(MPT_MAX_ELS * sizeof (request_t *),
     M_DEVBUF, M_NOWAIT | M_ZERO);

 if (mpt->els_cmd_ptrs == ((void*)0)) {
  return (FALSE);
 }




 for (i = 0; i < MPT_MAX_ELS; i++) {
  request_t *req = mpt_get_request(mpt, FALSE);
  if (req == ((void*)0)) {
   break;
  }
  req->state |= REQ_STATE_LOCKED;
  mpt->els_cmd_ptrs[i] = req;
  mpt_fc_post_els(mpt, req, i);
 }

 if (i == 0) {
  mpt_prt(mpt, "unable to add ELS buffer resources\n");
  free(mpt->els_cmd_ptrs, M_DEVBUF);
  mpt->els_cmd_ptrs = ((void*)0);
  return (FALSE);
 }
 if (i != MPT_MAX_ELS) {
  mpt_lprt(mpt, MPT_PRT_INFO,
      "only added %d of %d  ELS buffers\n", i, MPT_MAX_ELS);
 }
 mpt->els_cmds_allocated = i;
 return(TRUE);
}
