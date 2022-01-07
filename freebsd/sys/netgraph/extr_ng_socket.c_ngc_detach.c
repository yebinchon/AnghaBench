
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct ngpcb {int dummy; } ;


 int KASSERT (int ,char*) ;
 int NG_CONTROL ;
 int ng_detach_common (struct ngpcb* const,int ) ;
 struct ngpcb* sotongpcb (struct socket*) ;

__attribute__((used)) static void
ngc_detach(struct socket *so)
{
 struct ngpcb *const pcbp = sotongpcb(so);

 KASSERT(pcbp != ((void*)0), ("ngc_detach: pcbp == NULL"));
 ng_detach_common(pcbp, NG_CONTROL);
}
