
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {scalar_t__ pos; scalar_t__ data; } ;
typedef TYPE_1__ bin_stream_t ;


 int le64dec (scalar_t__) ;

uint64_t
bs_read_u64(bin_stream_t * bs)
{
 uint64_t data = le64dec(bs->data + bs->pos);
 bs->pos += 8;
 return data;
}
