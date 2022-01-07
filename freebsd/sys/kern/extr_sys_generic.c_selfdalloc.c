
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {struct seltd* td_sel; } ;
struct seltd {TYPE_1__* st_free2; TYPE_2__* st_free1; } ;
struct TYPE_4__ {void* sf_cookie; struct seltd* sf_td; } ;
struct TYPE_3__ {void* sf_cookie; struct seltd* sf_td; } ;


 int M_WAITOK ;
 int M_ZERO ;
 int selfd_zone ;
 void* uma_zalloc (int ,int) ;

__attribute__((used)) static void
selfdalloc(struct thread *td, void *cookie)
{
 struct seltd *stp;

 stp = td->td_sel;
 if (stp->st_free1 == ((void*)0))
  stp->st_free1 = uma_zalloc(selfd_zone, M_WAITOK|M_ZERO);
 stp->st_free1->sf_td = stp;
 stp->st_free1->sf_cookie = cookie;
 if (stp->st_free2 == ((void*)0))
  stp->st_free2 = uma_zalloc(selfd_zone, M_WAITOK|M_ZERO);
 stp->st_free2->sf_td = stp;
 stp->st_free2->sf_cookie = cookie;
}
