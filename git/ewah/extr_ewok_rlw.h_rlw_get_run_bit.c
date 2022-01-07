
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const eword_t ;



__attribute__((used)) static inline int rlw_get_run_bit(const eword_t *word)
{
 return *word & (eword_t)1;
}
