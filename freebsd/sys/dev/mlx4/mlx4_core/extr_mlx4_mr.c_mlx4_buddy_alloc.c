
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx4_buddy {int max_order; int lock; scalar_t__* num_free; int * bits; } ;


 int clear_bit (int,int ) ;
 int find_first_bit (int ,int) ;
 int set_bit (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static u32 mlx4_buddy_alloc(struct mlx4_buddy *buddy, int order)
{
 int o;
 int m;
 u32 seg;

 spin_lock(&buddy->lock);

 for (o = order; o <= buddy->max_order; ++o)
  if (buddy->num_free[o]) {
   m = 1 << (buddy->max_order - o);
   seg = find_first_bit(buddy->bits[o], m);
   if (seg < m)
    goto found;
  }

 spin_unlock(&buddy->lock);
 return -1;

 found:
 clear_bit(seg, buddy->bits[o]);
 --buddy->num_free[o];

 while (o > order) {
  --o;
  seg <<= 1;
  set_bit(seg ^ 1, buddy->bits[o]);
  ++buddy->num_free[o];
 }

 spin_unlock(&buddy->lock);

 seg <<= order;

 return seg;
}
