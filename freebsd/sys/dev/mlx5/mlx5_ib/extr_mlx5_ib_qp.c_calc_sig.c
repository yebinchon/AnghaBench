
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 calc_sig(void *wqe, int size)
{
 u8 *p = wqe;
 u8 res = 0;
 int i;

 for (i = 0; i < size; i++)
  res ^= p[i];

 return ~res;
}
