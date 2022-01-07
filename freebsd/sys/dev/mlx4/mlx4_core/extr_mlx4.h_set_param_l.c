
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;



__attribute__((used)) static inline void set_param_l(u64 *arg, u32 val)
{
 *arg = (*arg & 0xffffffff00000000ULL) | (u64) val;
}
