
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_4__ {scalar_t__* o2; scalar_t__* o1; scalar_t__* i2; scalar_t__* i1; } ;
struct TYPE_3__ {scalar_t__* o2; scalar_t__* o1; scalar_t__* i2; scalar_t__* i1; } ;
struct feed_eq_info {size_t channels; TYPE_2__ bass; TYPE_1__ treble; } ;



__attribute__((used)) static void
feed_eq_reset(struct feed_eq_info *info)
{
 uint32_t i;

 for (i = 0; i < info->channels; i++) {
  info->treble.i1[i] = 0;
  info->treble.i2[i] = 0;
  info->treble.o1[i] = 0;
  info->treble.o2[i] = 0;
  info->bass.i1[i] = 0;
  info->bass.i2[i] = 0;
  info->bass.o1[i] = 0;
  info->bass.o2[i] = 0;
 }
}
