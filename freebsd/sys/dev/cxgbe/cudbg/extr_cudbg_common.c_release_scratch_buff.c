
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cudbg_buffer {scalar_t__ size; scalar_t__ offset; int * data; } ;


 int memset (int *,int ,scalar_t__) ;

void release_scratch_buff(struct cudbg_buffer *pscratch_buff,
     struct cudbg_buffer *pdbg_buff)
{
 pdbg_buff->size += pscratch_buff->size;



 memset(pscratch_buff->data, 0, pscratch_buff->size);
 pscratch_buff->data = ((void*)0);
 pscratch_buff->offset = 0;
 pscratch_buff->size = 0;
}
