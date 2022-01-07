
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int NUM_WT ;
 int curr_weight ;
 int fprintf (int ,char*,int) ;
 int * order_weights ;
 int stderr ;

__attribute__((used)) static void
add_order_pri(int32_t ref)
{
 if (curr_weight >= NUM_WT) {
  fprintf(stderr,"too many weights (max %d)", NUM_WT);
  return;
 }
 order_weights[curr_weight] = ref;
 curr_weight++;
}
