
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {scalar_t__ pos; scalar_t__ data; } ;
typedef TYPE_1__ bin_stream_t ;


 int le16dec (scalar_t__) ;

uint16_t
bs_read_u16(bin_stream_t * bs)
{
 uint16_t data = le16dec(bs->data + bs->pos);
 bs->pos += 2;
 return data;
}
