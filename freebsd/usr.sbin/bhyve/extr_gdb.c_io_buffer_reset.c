
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_buffer {scalar_t__ len; scalar_t__ start; } ;



__attribute__((used)) static void
io_buffer_reset(struct io_buffer *io)
{

 io->start = 0;
 io->len = 0;
}
