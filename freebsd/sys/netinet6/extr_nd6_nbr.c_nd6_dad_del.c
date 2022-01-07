
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dadq {int dad_ondadq; } ;


 int DADQ_WLOCK () ;
 int DADQ_WUNLOCK () ;
 int TAILQ_REMOVE (int *,struct dadq*,int ) ;
 int V_dadq ;
 int dad_list ;
 int nd6_dad_rele (struct dadq*) ;

__attribute__((used)) static void
nd6_dad_del(struct dadq *dp)
{

 DADQ_WLOCK();
 if (dp->dad_ondadq) {




  TAILQ_REMOVE(&V_dadq, dp, dad_list);
  dp->dad_ondadq = 0;
  DADQ_WUNLOCK();
  nd6_dad_rele(dp);
 } else
  DADQ_WUNLOCK();
}
