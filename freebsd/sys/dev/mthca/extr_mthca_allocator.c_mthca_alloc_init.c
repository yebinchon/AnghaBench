
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mthca_alloc {int max; int mask; int table; int lock; scalar_t__ top; scalar_t__ last; } ;


 int BITS_TO_LONGS (int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int bitmap_zero (int ,int) ;
 int ffs (int) ;
 int kmalloc (int,int ) ;
 int set_bit (int,int ) ;
 int spin_lock_init (int *) ;

int mthca_alloc_init(struct mthca_alloc *alloc, u32 num, u32 mask,
       u32 reserved)
{
 int i;


 if (num != 1 << (ffs(num) - 1))
  return -EINVAL;

 alloc->last = 0;
 alloc->top = 0;
 alloc->max = num;
 alloc->mask = mask;
 spin_lock_init(&alloc->lock);
 alloc->table = kmalloc(BITS_TO_LONGS(num) * sizeof (long),
          GFP_KERNEL);
 if (!alloc->table)
  return -ENOMEM;

 bitmap_zero(alloc->table, num);
 for (i = 0; i < reserved; ++i)
  set_bit(i, alloc->table);

 return 0;
}
