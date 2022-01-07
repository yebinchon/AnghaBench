
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {scalar_t__ td_vp_reserv; } ;


 int atomic_subtract_long (int *,scalar_t__) ;
 struct thread* curthread ;
 int numvnodes ;

void
getnewvnode_drop_reserve(void)
{
 struct thread *td;

 td = curthread;
 atomic_subtract_long(&numvnodes, td->td_vp_reserv);
 td->td_vp_reserv = 0;
}
