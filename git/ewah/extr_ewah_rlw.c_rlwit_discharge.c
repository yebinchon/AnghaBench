
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t running_len; int running_bit; size_t literal_words; } ;
struct rlw_iterator {scalar_t__ literal_word_start; scalar_t__ buffer; TYPE_1__ rlw; } ;
struct ewah_bitmap {int dummy; } ;


 int ewah_add_dirty_words (struct ewah_bitmap*,scalar_t__,size_t,int) ;
 int ewah_add_empty_words (struct ewah_bitmap*,int,size_t) ;
 int rlwit_discard_first_words (struct rlw_iterator*,size_t) ;
 scalar_t__ rlwit_word_size (struct rlw_iterator*) ;

size_t rlwit_discharge(
 struct rlw_iterator *it, struct ewah_bitmap *out, size_t max, int negate)
{
 size_t index = 0;

 while (index < max && rlwit_word_size(it) > 0) {
  size_t pd, pl = it->rlw.running_len;

  if (index + pl > max)
   pl = max - index;

  ewah_add_empty_words(out, it->rlw.running_bit ^ negate, pl);
  index += pl;

  pd = it->rlw.literal_words;
  if (pd + index > max)
   pd = max - index;

  ewah_add_dirty_words(out,
   it->buffer + it->literal_word_start, pd, negate);

  rlwit_discard_first_words(it, pd + pl);
  index += pd;
 }

 return index;
}
