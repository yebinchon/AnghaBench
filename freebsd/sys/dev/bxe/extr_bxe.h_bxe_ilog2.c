
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline
int bxe_ilog2(int x)
{
    int log = 0;
    while (x >>= 1) log++;
    return (log);
}
