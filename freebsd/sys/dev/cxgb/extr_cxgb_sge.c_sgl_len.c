
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static __inline unsigned int
sgl_len(unsigned int n)
{
 return ((3 * n) / 2 + (n & 1));
}
