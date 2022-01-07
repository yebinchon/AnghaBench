
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct io_buffer {size_t capacity; int * data; } ;


 int err (int,char*) ;
 size_t io_buffer_avail (struct io_buffer*) ;
 int * realloc (int *,size_t) ;

__attribute__((used)) static void
io_buffer_grow(struct io_buffer *io, size_t newsize)
{
 uint8_t *new_data;
 size_t avail, new_cap;

 avail = io_buffer_avail(io);
 if (newsize <= avail)
  return;

 new_cap = io->capacity + (newsize - avail);
 new_data = realloc(io->data, new_cap);
 if (new_data == ((void*)0))
  err(1, "Failed to grow GDB I/O buffer");
 io->data = new_data;
 io->capacity = new_cap;
}
