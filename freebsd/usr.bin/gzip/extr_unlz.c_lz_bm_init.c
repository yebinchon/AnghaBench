
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT_MODEL_INIT ;

__attribute__((used)) static void
lz_bm_init(int *a, size_t l)
{
 for (size_t i = 0; i < l; i++)
  a[i] = BIT_MODEL_INIT;
}
