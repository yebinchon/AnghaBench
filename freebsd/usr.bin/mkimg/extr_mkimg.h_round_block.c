
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lba_t ;


 int blksz ;
 int secsz ;

__attribute__((used)) static inline lba_t
round_block(lba_t n)
{
 lba_t b = blksz / secsz;
 return ((n + b - 1) & ~(b - 1));
}
