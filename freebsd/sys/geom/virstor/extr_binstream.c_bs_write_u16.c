
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int data; int pos; } ;
typedef TYPE_1__ bin_stream_t ;


 int le16enc (int,int ) ;

unsigned
bs_write_u16(bin_stream_t * bs, uint16_t data)
{
 le16enc(bs->data + bs->pos, data);
 return (bs->pos += 2);
}
