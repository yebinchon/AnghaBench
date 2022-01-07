
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ewah_iterator {scalar_t__ buffer_size; scalar_t__ pointer; scalar_t__ b; scalar_t__ literals; scalar_t__ compressed; scalar_t__ rl; scalar_t__ lw; int buffer; } ;
struct ewah_bitmap {scalar_t__ buffer_size; int buffer; } ;


 int read_new_rlw (struct ewah_iterator*) ;

void ewah_iterator_init(struct ewah_iterator *it, struct ewah_bitmap *parent)
{
 it->buffer = parent->buffer;
 it->buffer_size = parent->buffer_size;
 it->pointer = 0;

 it->lw = 0;
 it->rl = 0;
 it->compressed = 0;
 it->literals = 0;
 it->b = 0;

 if (it->pointer < it->buffer_size)
  read_new_rlw(it);
}
