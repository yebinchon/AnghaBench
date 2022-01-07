
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ewah_iterator {size_t pointer; int buffer_size; int lw; int rl; int b; int * buffer; scalar_t__ compressed; scalar_t__ literals; } ;
typedef int eword_t ;


 int rlw_get_literal_words (int const*) ;
 int rlw_get_run_bit (int const*) ;
 int rlw_get_running_len (int const*) ;

__attribute__((used)) static void read_new_rlw(struct ewah_iterator *it)
{
 const eword_t *word = ((void*)0);

 it->literals = 0;
 it->compressed = 0;

 while (1) {
  word = &it->buffer[it->pointer];

  it->rl = rlw_get_running_len(word);
  it->lw = rlw_get_literal_words(word);
  it->b = rlw_get_run_bit(word);

  if (it->rl || it->lw)
   return;

  if (it->pointer < it->buffer_size - 1) {
   it->pointer++;
  } else {
   it->pointer = it->buffer_size;
   return;
  }
 }
}
