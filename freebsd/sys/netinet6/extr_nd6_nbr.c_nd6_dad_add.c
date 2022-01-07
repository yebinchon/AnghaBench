
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dadq {int dad_ondadq; } ;


 int DADQ_WLOCK () ;
 int DADQ_WUNLOCK () ;
 int TAILQ_INSERT_TAIL (int *,struct dadq*,int ) ;
 int V_dadq ;
 int dad_list ;

__attribute__((used)) static void
nd6_dad_add(struct dadq *dp)
{

 DADQ_WLOCK();
 TAILQ_INSERT_TAIL(&V_dadq, dp, dad_list);
 dp->dad_ondadq = 1;
 DADQ_WUNLOCK();
}
