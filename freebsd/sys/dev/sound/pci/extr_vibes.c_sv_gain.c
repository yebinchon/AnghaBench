
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int32_t ;
struct sc_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ stereo; } ;


 TYPE_1__* mt ;
 int sv_channel_gain (struct sc_info*,size_t,size_t,int) ;

__attribute__((used)) static int
sv_gain(struct sc_info *sc, u_int32_t dev, u_int32_t left, u_int32_t right)
{
 sv_channel_gain(sc, dev, left, 0);
 if (mt[dev].stereo)
  sv_channel_gain(sc, dev, right, 1);
 return 0;
}
