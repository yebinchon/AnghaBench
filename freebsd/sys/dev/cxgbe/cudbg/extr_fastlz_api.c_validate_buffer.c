
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cudbg_buffer {int dummy; } ;


 int CUDBG_STATUS_INVALID_BUFF ;
 int detect_magic (struct cudbg_buffer*) ;

int validate_buffer(struct cudbg_buffer *compressed_buffer)
{
 if (!detect_magic(compressed_buffer))
  return CUDBG_STATUS_INVALID_BUFF;

 return 0;
}
