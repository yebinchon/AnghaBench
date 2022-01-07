
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data; int pos; } ;
typedef TYPE_1__ bin_stream_t ;



char*
bs_read_str(bin_stream_t * bs, char *buf, unsigned buf_size)
{
 unsigned len = 0;
 char *work_buf = buf;
 if (buf == ((void*)0) || buf_size < 1)
  return ((void*)0);
 do {
  *work_buf = *(bs->data + bs->pos + len);
 } while (len++ < buf_size - 1 && *(work_buf++) != '\0');
 *(buf + buf_size - 1) = '\0';
 bs->pos += len;
 return buf;
}
