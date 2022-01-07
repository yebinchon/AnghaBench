
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct seltd* td_sel; } ;
struct seltd {int st_selq; scalar_t__ st_flags; int st_wait; int st_mtx; } ;


 int MTX_DEF ;
 int M_SELECT ;
 int M_WAITOK ;
 int M_ZERO ;
 int STAILQ_INIT (int *) ;
 int cv_init (int *,char*) ;
 struct seltd* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static void
seltdinit(struct thread *td)
{
 struct seltd *stp;

 if ((stp = td->td_sel) != ((void*)0))
  goto out;
 td->td_sel = stp = malloc(sizeof(*stp), M_SELECT, M_WAITOK|M_ZERO);
 mtx_init(&stp->st_mtx, "sellck", ((void*)0), MTX_DEF);
 cv_init(&stp->st_wait, "select");
out:
 stp->st_flags = 0;
 STAILQ_INIT(&stp->st_selq);
}
