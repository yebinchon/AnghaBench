
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ewah_bitmap {int dummy; } ;
struct bitmap {size_t word_alloc; scalar_t__* words; } ;
typedef scalar_t__ eword_t ;


 int ewah_add (struct ewah_bitmap*,scalar_t__) ;
 int ewah_add_empty_words (struct ewah_bitmap*,int ,size_t) ;
 struct ewah_bitmap* ewah_new () ;

struct ewah_bitmap *bitmap_to_ewah(struct bitmap *bitmap)
{
 struct ewah_bitmap *ewah = ewah_new();
 size_t i, running_empty_words = 0;
 eword_t last_word = 0;

 for (i = 0; i < bitmap->word_alloc; ++i) {
  if (bitmap->words[i] == 0) {
   running_empty_words++;
   continue;
  }

  if (last_word != 0)
   ewah_add(ewah, last_word);

  if (running_empty_words > 0) {
   ewah_add_empty_words(ewah, 0, running_empty_words);
   running_empty_words = 0;
  }

  last_word = bitmap->words[i];
 }

 ewah_add(ewah, last_word);
 return ewah;
}
