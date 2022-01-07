
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpt_softc {TYPE_1__* request_pool; } ;
struct TYPE_2__ {int callout; } ;
typedef TYPE_1__ request_t ;


 int MPT_MAX_REQUESTS (struct mpt_softc*) ;
 int mpt_callout_drain (struct mpt_softc*,int *) ;
 int mpt_disable_ints (struct mpt_softc*) ;
 int mpt_dma_buf_free (struct mpt_softc*) ;

__attribute__((used)) static void
mpt_core_detach(struct mpt_softc *mpt)
{
 int val;




 mpt_disable_ints(mpt);


 for (val = 0; val < MPT_MAX_REQUESTS(mpt); val++) {
  request_t *req = &mpt->request_pool[val];
  mpt_callout_drain(mpt, &req->callout);
 }

 mpt_dma_buf_free(mpt);
}
