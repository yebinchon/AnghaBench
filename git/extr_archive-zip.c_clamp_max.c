
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;



__attribute__((used)) static uint64_t clamp_max(uint64_t n, uint64_t max, int *clamped)
{
 if (n <= max)
  return n;
 *clamped = 1;
 return max;
}
