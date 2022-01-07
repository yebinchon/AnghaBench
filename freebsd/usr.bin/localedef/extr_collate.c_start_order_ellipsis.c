
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUM_WT ;
 scalar_t__ T_CHAR ;
 int T_ELLIPSIS ;
 int * ellipsis_weights ;
 int fprintf (int ,char*) ;
 scalar_t__ lastorder ;
 int * order_weights ;
 int start_order (int ) ;
 int stderr ;

void
start_order_ellipsis(void)
{
 int i;

 start_order(T_ELLIPSIS);

 if (lastorder != T_CHAR) {
  fprintf(stderr, "illegal starting point for range");
  return;
 }

 for (i = 0; i < NUM_WT; i++) {
  ellipsis_weights[i] = order_weights[i];
 }
}
