
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t running_len; size_t literal_words; } ;
struct rlw_iterator {TYPE_1__ rlw; } ;



__attribute__((used)) static inline size_t rlwit_word_size(struct rlw_iterator *it)
{
 return it->rlw.running_len + it->rlw.literal_words;
}
