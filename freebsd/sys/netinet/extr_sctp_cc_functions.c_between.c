
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;



__attribute__((used)) static inline int
between(uint32_t seq1, uint32_t seq2, uint32_t seq3)
{
 return (seq3 - seq2 >= seq1 - seq2);
}
