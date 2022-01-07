
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mqueue_notifier {int dummy; } ;


 int M_WAITOK ;
 int M_ZERO ;
 int mqnoti_zone ;
 struct mqueue_notifier* uma_zalloc (int ,int) ;

__attribute__((used)) static __inline struct mqueue_notifier *
notifier_alloc(void)
{
 return (uma_zalloc(mqnoti_zone, M_WAITOK | M_ZERO));
}
