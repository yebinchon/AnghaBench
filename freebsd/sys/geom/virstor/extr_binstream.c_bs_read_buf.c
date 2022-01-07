
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data; int pos; } ;
typedef TYPE_1__ bin_stream_t ;



void
bs_read_buf(bin_stream_t * bs, char *buf, unsigned buf_size)
{
 unsigned i;
 for (i = 0; i < buf_size; i++)
  *(buf + i) = *(bs->data + bs->pos + i);
 bs->pos += buf_size;
}
