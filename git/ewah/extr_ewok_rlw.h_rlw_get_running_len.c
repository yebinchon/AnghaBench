
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int eword_t ;


 int const RLW_LARGEST_RUNNING_COUNT ;

__attribute__((used)) static inline eword_t rlw_get_running_len(const eword_t *word)
{
 return (*word >> 1) & RLW_LARGEST_RUNNING_COUNT;
}
