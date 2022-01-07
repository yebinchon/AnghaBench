
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct rawcb {int dummy; } ;


 int KASSERT (int ,char*) ;
 int raw_detach (struct rawcb*) ;
 struct rawcb* sotorawcb (struct socket*) ;

__attribute__((used)) static void
raw_udetach(struct socket *so)
{
 struct rawcb *rp = sotorawcb(so);

 KASSERT(rp != ((void*)0), ("raw_udetach: rp == NULL"));

 raw_detach(rp);
}
