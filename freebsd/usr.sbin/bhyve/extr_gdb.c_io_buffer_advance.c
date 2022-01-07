
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_buffer {size_t len; size_t start; } ;


 int assert (int) ;

__attribute__((used)) static void
io_buffer_advance(struct io_buffer *io, size_t amount)
{

 assert(amount <= io->len);
 io->start += amount;
 io->len -= amount;
}
