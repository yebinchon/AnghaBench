
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct z_info {int z_start; int channels; int bps; int * z_delay; } ;


 int z_copy (int *,int *,int) ;

__attribute__((used)) static void
z_feed_zoh(struct z_info *info, uint8_t *dst)
{





 uint32_t cnt;
 uint8_t *src;

 cnt = info->channels * info->bps;
 src = info->z_delay + (info->z_start * cnt);





 do {
  *dst++ = *src++;
 } while (--cnt != 0);

}
