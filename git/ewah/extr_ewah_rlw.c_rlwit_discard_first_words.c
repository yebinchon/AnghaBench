
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t running_len; size_t literal_words; scalar_t__ literal_word_offset; } ;
struct rlw_iterator {TYPE_1__ rlw; scalar_t__ literal_word_start; } ;


 int next_word (struct rlw_iterator*) ;
 scalar_t__ rlwit_literal_words (struct rlw_iterator*) ;
 scalar_t__ rlwit_word_size (struct rlw_iterator*) ;

void rlwit_discard_first_words(struct rlw_iterator *it, size_t x)
{
 while (x > 0) {
  size_t discard;

  if (it->rlw.running_len > x) {
   it->rlw.running_len -= x;
   return;
  }

  x -= it->rlw.running_len;
  it->rlw.running_len = 0;

  discard = (x > it->rlw.literal_words) ? it->rlw.literal_words : x;

  it->literal_word_start += discard;
  it->rlw.literal_words -= discard;
  x -= discard;

  if (x > 0 || rlwit_word_size(it) == 0) {
   if (!next_word(it))
    break;

   it->literal_word_start =
    rlwit_literal_words(it) + it->rlw.literal_word_offset;
  }
 }
}
