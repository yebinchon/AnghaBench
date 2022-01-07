
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data; int pos; } ;
typedef TYPE_1__ bin_stream_t ;



unsigned
bs_write_buf(bin_stream_t * bs, char *data, unsigned data_size)
{
 unsigned i;
 for (i = 0; i < data_size; i++)
  *(bs->data + bs->pos + i) = *(data + i);
 bs->pos += data_size;
 return bs->pos;
}
