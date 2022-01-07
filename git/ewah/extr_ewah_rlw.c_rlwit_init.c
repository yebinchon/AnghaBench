
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ literal_word_offset; } ;
struct rlw_iterator {TYPE_1__ rlw; scalar_t__ literal_word_start; scalar_t__ pointer; int size; int buffer; } ;
struct ewah_bitmap {int buffer_size; int buffer; } ;


 int next_word (struct rlw_iterator*) ;
 scalar_t__ rlwit_literal_words (struct rlw_iterator*) ;

void rlwit_init(struct rlw_iterator *it, struct ewah_bitmap *from_ewah)
{
 it->buffer = from_ewah->buffer;
 it->size = from_ewah->buffer_size;
 it->pointer = 0;

 next_word(it);

 it->literal_word_start = rlwit_literal_words(it) +
  it->rlw.literal_word_offset;
}
