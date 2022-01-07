
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reap_kill_tracker_head {int dummy; } ;
struct reap_kill_tracker {struct proc* parent; } ;
struct proc {int dummy; } ;


 int M_TEMP ;
 int M_WAITOK ;
 int TAILQ_INSERT_TAIL (struct reap_kill_tracker_head*,struct reap_kill_tracker*,int ) ;
 int link ;
 struct reap_kill_tracker* malloc (int,int ,int ) ;

__attribute__((used)) static void
reap_kill_sched(struct reap_kill_tracker_head *tracker, struct proc *p2)
{
 struct reap_kill_tracker *t;

 t = malloc(sizeof(struct reap_kill_tracker), M_TEMP, M_WAITOK);
 t->parent = p2;
 TAILQ_INSERT_TAIL(tracker, t, link);
}
