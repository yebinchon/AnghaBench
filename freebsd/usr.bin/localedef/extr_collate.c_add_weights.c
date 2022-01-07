
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int NUM_WT ;
 int add_weight (int ,int) ;

void
add_weights(int32_t *refs)
{
 int i;
 for (i = 0; i < NUM_WT; i++) {
  add_weight(refs[i], i);
 }
}
