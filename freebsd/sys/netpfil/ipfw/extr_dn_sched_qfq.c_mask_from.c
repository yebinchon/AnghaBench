
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned long
mask_from(unsigned long bitmap, int from)
{
 return bitmap & ~((1UL << from) - 1);
}
