
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mlx4_qp_table {int zones_uids; int * zones; struct mlx4_bitmap* bitmap_gen; } ;
struct TYPE_3__ {int num_qps; int* reserved_qps_cnt; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_bitmap {int dummy; } ;
struct TYPE_4__ {struct mlx4_qp_table qp_table; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX4_BF_QP_SKIP_MASK ;
 size_t MLX4_QP_REGION_FW ;
 int MLX4_QP_TABLE_RAW_ETH_PRIORITY ;
 int MLX4_QP_TABLE_RAW_ETH_SIZE ;
 int MLX4_QP_TABLE_RSS_ETH_PRIORITY ;
 int MLX4_QP_TABLE_ZONE_GENERAL ;
 int MLX4_QP_TABLE_ZONE_NUM ;
 int MLX4_QP_TABLE_ZONE_RSS ;
 int MLX4_ZONE_ALLOC_FLAGS_NO_OVERLAP ;
 int MLX4_ZONE_ALLOW_ALLOC_FROM_EQ_PRIO ;
 int MLX4_ZONE_ALLOW_ALLOC_FROM_LOWER_PRIO ;
 int MLX4_ZONE_FALLBACK_TO_HIGHER_PRIO ;
 int MLX4_ZONE_USE_RR ;
 int kfree (struct mlx4_bitmap**) ;
 struct mlx4_bitmap** kmalloc (int,int ) ;
 int min (int,int) ;
 int min3 (int,int,int) ;
 int mlx4_bitmap_alloc_range (struct mlx4_bitmap*,int,int,int) ;
 int mlx4_bitmap_cleanup (struct mlx4_bitmap*) ;
 int mlx4_bitmap_init (struct mlx4_bitmap*,int,int,int,int) ;
 TYPE_2__* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_zone_add_one (int *,struct mlx4_bitmap*,int,int ,int,int) ;
 int * mlx4_zone_allocator_create (int ) ;
 int mlx4_zone_allocator_destroy (int *) ;
 int roundup_pow_of_two (int) ;

__attribute__((used)) static int mlx4_create_zones(struct mlx4_dev *dev,
        u32 reserved_bottom_general,
        u32 reserved_top_general,
        u32 reserved_bottom_rss,
        u32 start_offset_rss,
        u32 max_table_offset)
{
 struct mlx4_qp_table *qp_table = &mlx4_priv(dev)->qp_table;
 struct mlx4_bitmap (*bitmap)[MLX4_QP_TABLE_ZONE_NUM] = ((void*)0);
 int bitmap_initialized = 0;
 u32 last_offset;
 int k;
 int err;

 qp_table->zones = mlx4_zone_allocator_create(MLX4_ZONE_ALLOC_FLAGS_NO_OVERLAP);

 if (((void*)0) == qp_table->zones)
  return -ENOMEM;

 bitmap = kmalloc(sizeof(*bitmap), GFP_KERNEL);

 if (((void*)0) == bitmap) {
  err = -ENOMEM;
  goto free_zone;
 }

 err = mlx4_bitmap_init(*bitmap + MLX4_QP_TABLE_ZONE_GENERAL, dev->caps.num_qps,
          (1 << 23) - 1, reserved_bottom_general,
          reserved_top_general);

 if (err)
  goto free_bitmap;

 ++bitmap_initialized;

 err = mlx4_zone_add_one(qp_table->zones, *bitmap + MLX4_QP_TABLE_ZONE_GENERAL,
    MLX4_ZONE_FALLBACK_TO_HIGHER_PRIO |
    MLX4_ZONE_USE_RR, 0,
    0, qp_table->zones_uids + MLX4_QP_TABLE_ZONE_GENERAL);

 if (err)
  goto free_bitmap;

 err = mlx4_bitmap_init(*bitmap + MLX4_QP_TABLE_ZONE_RSS,
          reserved_bottom_rss,
          reserved_bottom_rss - 1,
          dev->caps.reserved_qps_cnt[MLX4_QP_REGION_FW],
          reserved_bottom_rss - start_offset_rss);

 if (err)
  goto free_bitmap;

 ++bitmap_initialized;

 err = mlx4_zone_add_one(qp_table->zones, *bitmap + MLX4_QP_TABLE_ZONE_RSS,
    MLX4_ZONE_ALLOW_ALLOC_FROM_LOWER_PRIO |
    MLX4_ZONE_ALLOW_ALLOC_FROM_EQ_PRIO |
    MLX4_ZONE_USE_RR, MLX4_QP_TABLE_RSS_ETH_PRIORITY,
    0, qp_table->zones_uids + MLX4_QP_TABLE_ZONE_RSS);

 if (err)
  goto free_bitmap;

 last_offset = dev->caps.reserved_qps_cnt[MLX4_QP_REGION_FW];
 for (k = MLX4_QP_TABLE_ZONE_RSS + 1; k < sizeof(*bitmap)/sizeof((*bitmap)[0]);
      k++) {
  int size;
  u32 offset = start_offset_rss;
  u32 bf_mask;
  u32 requested_size;






  bf_mask = (MLX4_BF_QP_SKIP_MASK & ~(MLX4_BF_QP_SKIP_MASK - 1)) - 1;
  requested_size = min((u32)MLX4_QP_TABLE_RAW_ETH_SIZE, bf_mask + 1);

  if (((last_offset & MLX4_BF_QP_SKIP_MASK) &&
       ((int)(max_table_offset - last_offset)) >=
       roundup_pow_of_two(MLX4_BF_QP_SKIP_MASK)) ||
      (!(last_offset & MLX4_BF_QP_SKIP_MASK) &&
       !((last_offset + requested_size - 1) &
         MLX4_BF_QP_SKIP_MASK)))
   size = requested_size;
  else {
   u32 candidate_offset =
    (last_offset | MLX4_BF_QP_SKIP_MASK | bf_mask) + 1;

   if (last_offset & MLX4_BF_QP_SKIP_MASK)
    last_offset = candidate_offset;



   if (last_offset > max_table_offset) {

    size = -1;
   } else {
    size = min3(max_table_offset - last_offset,
         bf_mask - (last_offset & bf_mask),
         requested_size);
    if (size < requested_size) {
     int candidate_size;

     candidate_size = min3(
      max_table_offset - candidate_offset,
      bf_mask - (last_offset & bf_mask),
      requested_size);




     if (candidate_size > size) {
      last_offset = candidate_offset;
      size = candidate_size;
     }
    }
   }
  }

  if (size > 0) {




   offset = mlx4_bitmap_alloc_range(
     *bitmap + MLX4_QP_TABLE_ZONE_RSS,
     size, 1,
     MLX4_BF_QP_SKIP_MASK);

   if (offset == (u32)-1) {
    err = -ENOMEM;
    break;
   }

   last_offset = offset + size;

   err = mlx4_bitmap_init(*bitmap + k, roundup_pow_of_two(size),
            roundup_pow_of_two(size) - 1, 0,
            roundup_pow_of_two(size) - size);
  } else {



   err = mlx4_bitmap_init(*bitmap + k, 1,
            MLX4_QP_TABLE_RAW_ETH_SIZE - 1, 0,
            0);
   mlx4_bitmap_alloc_range(*bitmap + k, 1, 1, 0);
  }

  if (err)
   break;

  ++bitmap_initialized;

  err = mlx4_zone_add_one(qp_table->zones, *bitmap + k,
     MLX4_ZONE_ALLOW_ALLOC_FROM_LOWER_PRIO |
     MLX4_ZONE_ALLOW_ALLOC_FROM_EQ_PRIO |
     MLX4_ZONE_USE_RR, MLX4_QP_TABLE_RAW_ETH_PRIORITY,
     offset, qp_table->zones_uids + k);

  if (err)
   break;
 }

 if (err)
  goto free_bitmap;

 qp_table->bitmap_gen = *bitmap;

 return err;

free_bitmap:
 for (k = 0; k < bitmap_initialized; k++)
  mlx4_bitmap_cleanup(*bitmap + k);
 kfree(bitmap);
free_zone:
 mlx4_zone_allocator_destroy(qp_table->zones);
 return err;
}
