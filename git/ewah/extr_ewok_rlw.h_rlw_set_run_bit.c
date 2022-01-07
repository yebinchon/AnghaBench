
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int eword_t ;



__attribute__((used)) static inline void rlw_set_run_bit(eword_t *word, int b)
{
 if (b) {
  *word |= (eword_t)1;
 } else {
  *word &= (eword_t)(~1);
 }
}
