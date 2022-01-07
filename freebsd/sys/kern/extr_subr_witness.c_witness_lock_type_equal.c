
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct witness {TYPE_1__* w_class; } ;
struct TYPE_2__ {int lc_flags; } ;


 int LC_SLEEPLOCK ;
 int LC_SPINLOCK ;

__attribute__((used)) static __inline int
witness_lock_type_equal(struct witness *w1, struct witness *w2)
{

 return ((w1->w_class->lc_flags & (LC_SLEEPLOCK | LC_SPINLOCK)) ==
  (w2->w_class->lc_flags & (LC_SLEEPLOCK | LC_SPINLOCK)));
}
