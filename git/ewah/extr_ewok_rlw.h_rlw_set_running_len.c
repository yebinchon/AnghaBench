
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int eword_t ;


 int RLW_LARGEST_RUNNING_COUNT_SHIFT ;

__attribute__((used)) static inline void rlw_set_running_len(eword_t *word, eword_t l)
{
 *word |= RLW_LARGEST_RUNNING_COUNT_SHIFT;
 *word &= (l << 1) | (~RLW_LARGEST_RUNNING_COUNT_SHIFT);
}
