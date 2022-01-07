
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ewah_iterator {scalar_t__ pointer; scalar_t__ buffer_size; scalar_t__ compressed; scalar_t__ rl; scalar_t__ literals; scalar_t__ lw; int * buffer; scalar_t__ b; } ;
typedef int eword_t ;


 int assert (int) ;
 int read_new_rlw (struct ewah_iterator*) ;

int ewah_iterator_next(eword_t *next, struct ewah_iterator *it)
{
 if (it->pointer >= it->buffer_size)
  return 0;

 if (it->compressed < it->rl) {
  it->compressed++;
  *next = it->b ? (eword_t)(~0) : 0;
 } else {
  assert(it->literals < it->lw);

  it->literals++;
  it->pointer++;

  assert(it->pointer < it->buffer_size);

  *next = it->buffer[it->pointer];
 }

 if (it->compressed == it->rl && it->literals == it->lw) {
  if (++it->pointer < it->buffer_size)
   read_new_rlw(it);
 }

 return 1;
}
