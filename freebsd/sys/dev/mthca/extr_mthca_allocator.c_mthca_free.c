
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mthca_alloc {int max; int top; int mask; int lock; int last; int table; } ;


 int clear_bit (int,int ) ;
 int min (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void mthca_free(struct mthca_alloc *alloc, u32 obj)
{
 unsigned long flags;

 obj &= alloc->max - 1;

 spin_lock_irqsave(&alloc->lock, flags);

 clear_bit(obj, alloc->table);
 alloc->last = min(alloc->last, obj);
 alloc->top = (alloc->top + alloc->max) & alloc->mask;

 spin_unlock_irqrestore(&alloc->lock, flags);
}
