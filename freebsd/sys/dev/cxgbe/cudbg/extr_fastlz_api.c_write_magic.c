
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cudbg_buffer {int offset; int size; int data; } ;


 int sixpack_magic ;
 int write_to_buf (int ,int ,int *,int ,int) ;

int write_magic(struct cudbg_buffer *_out_buff)
{
 int rc;

 rc = write_to_buf(_out_buff->data, _out_buff->size, &_out_buff->offset,
     sixpack_magic, 8);

 return rc;
}
