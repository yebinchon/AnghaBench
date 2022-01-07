
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_mqnotifier; } ;
struct mqueue_notifier {int dummy; } ;


 int LIST_INSERT_HEAD (int *,struct mqueue_notifier*,int ) ;
 int nt_link ;

__attribute__((used)) static __inline void
notifier_insert(struct proc *p, struct mqueue_notifier *nt)
{
 LIST_INSERT_HEAD(&p->p_mqnotifier, nt, nt_link);
}
