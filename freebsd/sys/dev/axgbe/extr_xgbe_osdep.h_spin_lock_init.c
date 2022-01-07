
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ spinlock_t ;


 int MTX_DEF ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static inline void
spin_lock_init(spinlock_t *spinlock)
{

 mtx_init(&spinlock->lock, "axgbe_spin", ((void*)0), MTX_DEF);
}
