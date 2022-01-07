
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int memcpy (char*,char*,scalar_t__) ;

int read_from_buf(void *in_buf, u32 in_buf_size, u32 *offset, void *out_buf,
    u32 out_buf_size)
{
 if (in_buf_size - *offset < out_buf_size)
  return 0;

 memcpy((char *)out_buf, (char *)in_buf + *offset, out_buf_size);
 *offset = *offset + out_buf_size;
 return out_buf_size;
}
