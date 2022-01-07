
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cudbg_buffer {int offset; int size; int data; } ;


 size_t read_from_buf (int ,int ,int *,unsigned char*,int) ;
 unsigned char* sixpack_magic ;

int detect_magic(struct cudbg_buffer *_c_buff)
{
 unsigned char buffer[8];
 size_t bytes_read;
 int c;

 bytes_read = read_from_buf(_c_buff->data, _c_buff->size,
       &_c_buff->offset, buffer, 8);

 if (bytes_read < 8)
  return 0;

 for (c = 0; c < 8; c++)
  if (buffer[c] != sixpack_magic[c])
   return 0;

 return -1;
}
