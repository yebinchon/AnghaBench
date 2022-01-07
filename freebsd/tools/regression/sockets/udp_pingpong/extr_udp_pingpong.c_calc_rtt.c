
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct test_pkt {TYPE_1__* tss; } ;
struct rtt {int e2e; int a2b_b2a; int b2a; int a2b; } ;
struct TYPE_2__ {int sent; int recvd; } ;


 int timespecadd (int *,int *,int *) ;
 int timespecsub (int *,int *,int *) ;

__attribute__((used)) static void
calc_rtt(struct test_pkt *tpp, struct rtt *rttp)
{

    timespecsub(&tpp->tss[1].recvd, &tpp->tss[0].sent, &rttp->a2b);
    timespecsub(&tpp->tss[0].recvd, &tpp->tss[1].sent, &rttp->b2a);
    timespecadd(&rttp->a2b, &rttp->b2a, &rttp->a2b_b2a);
    timespecsub(&tpp->tss[0].recvd, &tpp->tss[0].sent, &rttp->e2e);
}
