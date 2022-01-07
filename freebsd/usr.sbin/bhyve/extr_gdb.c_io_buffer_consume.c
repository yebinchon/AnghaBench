
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_buffer {scalar_t__ len; scalar_t__ start; int data; } ;


 int io_buffer_advance (struct io_buffer*,size_t) ;
 int io_buffer_head (struct io_buffer*) ;
 int memmove (int ,int ,scalar_t__) ;

__attribute__((used)) static void
io_buffer_consume(struct io_buffer *io, size_t amount)
{

 io_buffer_advance(io, amount);
 if (io->len == 0) {
  io->start = 0;
  return;
 }





 memmove(io->data, io_buffer_head(io), io->len);
 io->start = 0;
}
