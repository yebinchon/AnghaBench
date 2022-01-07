
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct txschedule {size_t r0; size_t r1; size_t r2; size_t r3; int t3; int t2; int t1; int t0; } ;
struct sample_node {struct txschedule* sched; } ;
struct ath_softc {int dummy; } ;
struct ath_rc_series {size_t rix; int tries; scalar_t__ flags; } ;
struct ath_node {int dummy; } ;


 struct sample_node* ATH_NODE_SAMPLE (struct ath_node*) ;
 int KASSERT (int,char*) ;

void
ath_rate_getxtxrates(struct ath_softc *sc, struct ath_node *an,
    uint8_t rix0, struct ath_rc_series *rc)
{
 struct sample_node *sn = ATH_NODE_SAMPLE(an);
 const struct txschedule *sched = &sn->sched[rix0];

 KASSERT(rix0 == sched->r0, ("rix0 (%x) != sched->r0 (%x)!\n",
     rix0, sched->r0));

 rc[0].flags = rc[1].flags = rc[2].flags = rc[3].flags = 0;

 rc[0].rix = sched->r0;
 rc[1].rix = sched->r1;
 rc[2].rix = sched->r2;
 rc[3].rix = sched->r3;

 rc[0].tries = sched->t0;
 rc[1].tries = sched->t1;
 rc[2].tries = sched->t2;
 rc[3].tries = sched->t3;
}
