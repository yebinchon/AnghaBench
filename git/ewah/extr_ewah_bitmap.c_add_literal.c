
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ewah_bitmap {int rlw; } ;
typedef int eword_t ;


 int RLW_LARGEST_LITERAL_COUNT ;
 int assert (int) ;
 int buffer_push (struct ewah_bitmap*,int) ;
 int buffer_push_rlw (struct ewah_bitmap*,int ) ;
 int rlw_get_literal_words (int ) ;
 int rlw_set_literal_words (int ,int) ;

__attribute__((used)) static size_t add_literal(struct ewah_bitmap *self, eword_t new_data)
{
 eword_t current_num = rlw_get_literal_words(self->rlw);

 if (current_num >= RLW_LARGEST_LITERAL_COUNT) {
  buffer_push_rlw(self, 0);

  rlw_set_literal_words(self->rlw, 1);
  buffer_push(self, new_data);
  return 2;
 }

 rlw_set_literal_words(self->rlw, current_num + 1);


 assert(rlw_get_literal_words(self->rlw) == current_num + 1);

 buffer_push(self, new_data);
 return 1;
}
