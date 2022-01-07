
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbq {int lock; } ;


 int mtx_unlock_spin (int *) ;

__attribute__((used)) static inline void
mbq_unlock(struct mbq *q)
{
 mtx_unlock_spin(&q->lock);
}
