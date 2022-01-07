
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mqueue_notifier {int dummy; } ;


 int mqnoti_zone ;
 int uma_zfree (int ,struct mqueue_notifier*) ;

__attribute__((used)) static __inline void
notifier_free(struct mqueue_notifier *p)
{
 uma_zfree(mqnoti_zone, p);
}
