
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int si_note; } ;
struct pts_softc {scalar_t__ pts_unit; int * pts_cdev; TYPE_1__ pts_outpoll; TYPE_1__ pts_inpoll; TYPE_2__* pts_cred; } ;
struct TYPE_5__ {int cr_ruidinfo; } ;


 int M_PTS ;
 int RACCT_NPTS ;
 int chgptscnt (int ,int,int ) ;
 int crfree (TYPE_2__*) ;
 int destroy_dev_sched (int *) ;
 int free (struct pts_softc*,int ) ;
 int free_unr (int ,scalar_t__) ;
 int knlist_destroy (int *) ;
 int pts_pool ;
 int racct_sub_cred (TYPE_2__*,int ,int) ;
 int seldrain (TYPE_1__*) ;

__attribute__((used)) static void
ptsdrv_free(void *softc)
{
 struct pts_softc *psc = softc;


 if (psc->pts_unit >= 0)
  free_unr(pts_pool, psc->pts_unit);

 chgptscnt(psc->pts_cred->cr_ruidinfo, -1, 0);
 racct_sub_cred(psc->pts_cred, RACCT_NPTS, 1);
 crfree(psc->pts_cred);

 seldrain(&psc->pts_inpoll);
 seldrain(&psc->pts_outpoll);
 knlist_destroy(&psc->pts_inpoll.si_note);
 knlist_destroy(&psc->pts_outpoll.si_note);







 free(psc, M_PTS);
}
