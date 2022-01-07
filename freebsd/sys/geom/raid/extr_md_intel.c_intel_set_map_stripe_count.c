
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_raid_map {int stripe_count; int stripe_count_hi; } ;
typedef int off_t ;



__attribute__((used)) static void
intel_set_map_stripe_count(struct intel_raid_map *mmap, off_t stripe_count)
{

 mmap->stripe_count = stripe_count & 0xffffffff;
 mmap->stripe_count_hi = stripe_count >> 32;
}
