
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int eword_t ;


 int RLW_RUNNING_BITS ;
 int RLW_RUNNING_LEN_PLUS_BIT ;

__attribute__((used)) static inline void rlw_set_literal_words(eword_t *word, eword_t l)
{
 *word |= ~RLW_RUNNING_LEN_PLUS_BIT;
 *word &= (l << (RLW_RUNNING_BITS + 1)) | RLW_RUNNING_LEN_PLUS_BIT;
}
