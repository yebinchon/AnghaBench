
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bitstr_t ;


 int bit_clear (int *,int) ;
 int bit_set (int *,int) ;

__attribute__((used)) static inline void
bit_change(bitstr_t *bitstr, int bit, int value)
{
 if (value)
  bit_set(bitstr, bit);
 else
  bit_clear(bitstr, bit);
}
