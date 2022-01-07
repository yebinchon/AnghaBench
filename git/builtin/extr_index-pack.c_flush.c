
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* update_fn ) (int *,scalar_t__,scalar_t__) ;} ;


 scalar_t__ input_buffer ;
 int input_ctx ;
 int input_len ;
 scalar_t__ input_offset ;
 int memmove (scalar_t__,scalar_t__,int ) ;
 scalar_t__ output_fd ;
 int stub1 (int *,scalar_t__,scalar_t__) ;
 TYPE_1__* the_hash_algo ;
 int write_or_die (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void flush(void)
{
 if (input_offset) {
  if (output_fd >= 0)
   write_or_die(output_fd, input_buffer, input_offset);
  the_hash_algo->update_fn(&input_ctx, input_buffer, input_offset);
  memmove(input_buffer, input_buffer + input_offset, input_len);
  input_offset = 0;
 }
}
