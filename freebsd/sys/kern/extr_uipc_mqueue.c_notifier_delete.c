
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
struct mqueue_notifier {int dummy; } ;


 int LIST_REMOVE (struct mqueue_notifier*,int ) ;
 int notifier_free (struct mqueue_notifier*) ;
 int nt_link ;

__attribute__((used)) static __inline void
notifier_delete(struct proc *p, struct mqueue_notifier *nt)
{
 LIST_REMOVE(nt, nt_link);
 notifier_free(nt);
}
