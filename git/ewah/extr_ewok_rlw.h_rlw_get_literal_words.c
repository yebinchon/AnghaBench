
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int eword_t ;


 int RLW_RUNNING_BITS ;

__attribute__((used)) static inline eword_t rlw_get_literal_words(const eword_t *word)
{
 return *word >> (1 + RLW_RUNNING_BITS);
}
