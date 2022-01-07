
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ pos; scalar_t__ data; } ;
typedef TYPE_1__ bin_stream_t ;



uint8_t
bs_read_u8(bin_stream_t * bs)
{
 uint8_t data = *((uint8_t *) (bs->data + bs->pos));
 bs->pos++;
 return data;
}
