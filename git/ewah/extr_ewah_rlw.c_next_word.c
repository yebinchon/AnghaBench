
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ literal_word_offset; int * word; int running_bit; int running_len; scalar_t__ literal_words; } ;
struct rlw_iterator {size_t pointer; size_t size; TYPE_1__ rlw; int * buffer; } ;


 scalar_t__ rlw_get_literal_words (int *) ;
 int rlw_get_run_bit (int *) ;
 int rlw_get_running_len (int *) ;

__attribute__((used)) static inline int next_word(struct rlw_iterator *it)
{
 if (it->pointer >= it->size)
  return 0;

 it->rlw.word = &it->buffer[it->pointer];
 it->pointer += rlw_get_literal_words(it->rlw.word) + 1;

 it->rlw.literal_words = rlw_get_literal_words(it->rlw.word);
 it->rlw.running_len = rlw_get_running_len(it->rlw.word);
 it->rlw.running_bit = rlw_get_run_bit(it->rlw.word);
 it->rlw.literal_word_offset = 0;

 return 1;
}
