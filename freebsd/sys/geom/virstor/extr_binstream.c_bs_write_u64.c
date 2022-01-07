
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int data; int pos; } ;
typedef TYPE_1__ bin_stream_t ;


 int le64enc (int,int ) ;

unsigned
bs_write_u64(bin_stream_t * bs, uint64_t data)
{
 le64enc(bs->data + bs->pos, data);
 return (bs->pos += 8);
}
