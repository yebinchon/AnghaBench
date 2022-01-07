
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_ucred; } ;


 int KASSERT (int,char*) ;
 struct thread* curthread ;
 int priv_check_cred (int ,int) ;

int
priv_check(struct thread *td, int priv)
{

 KASSERT(td == curthread, ("priv_check: td != curthread"));

 return (priv_check_cred(td->td_ucred, priv));
}
