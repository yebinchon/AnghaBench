
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pos; } ;
typedef TYPE_1__ bin_stream_t ;



void
bs_reset(bin_stream_t * bs)
{
 bs->pos = 0;
}
