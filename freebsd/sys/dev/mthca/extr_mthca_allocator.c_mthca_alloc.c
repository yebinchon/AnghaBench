
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mthca_alloc {int max; int top; int mask; int lock; int table; int last; } ;


 int find_first_zero_bit (int ,int) ;
 int find_next_zero_bit (int ,int,int ) ;
 int set_bit (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

u32 mthca_alloc(struct mthca_alloc *alloc)
{
 unsigned long flags;
 u32 obj;

 spin_lock_irqsave(&alloc->lock, flags);

 obj = find_next_zero_bit(alloc->table, alloc->max, alloc->last);
 if (obj >= alloc->max) {
  alloc->top = (alloc->top + alloc->max) & alloc->mask;
  obj = find_first_zero_bit(alloc->table, alloc->max);
 }

 if (obj < alloc->max) {
  set_bit(obj, alloc->table);
  obj |= alloc->top;
 } else
  obj = -1;

 spin_unlock_irqrestore(&alloc->lock, flags);

 return obj;
}
