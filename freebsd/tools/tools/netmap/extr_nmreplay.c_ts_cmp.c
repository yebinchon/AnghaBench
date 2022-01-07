
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int int64_t ;



__attribute__((used)) static inline int64_t
ts_cmp(uint64_t a, uint64_t b)
{
 return (int64_t)(a - b);
}
