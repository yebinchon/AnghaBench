
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct seltd* td_sel; } ;
struct seltd {int st_mtx; int st_wait; scalar_t__ st_free2; scalar_t__ st_free1; } ;


 int M_SELECT ;
 int cv_destroy (int *) ;
 int free (struct seltd*,int ) ;
 int mtx_destroy (int *) ;
 int selfd_zone ;
 int uma_zfree (int ,scalar_t__) ;

void
seltdfini(struct thread *td)
{
 struct seltd *stp;

 stp = td->td_sel;
 if (stp == ((void*)0))
  return;
 if (stp->st_free1)
  uma_zfree(selfd_zone, stp->st_free1);
 if (stp->st_free2)
  uma_zfree(selfd_zone, stp->st_free2);
 td->td_sel = ((void*)0);
 cv_destroy(&stp->st_wait);
 mtx_destroy(&stp->st_mtx);
 free(stp, M_SELECT);
}
