
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COLL_WEIGHTS_MAX ;
 int T_CHAR ;
 scalar_t__ T_ELLIPSIS ;
 scalar_t__ curr_weight ;
 scalar_t__ currorder ;
 int fprintf (int ,char*) ;
 scalar_t__ lastorder ;
 int* order_weights ;
 int stderr ;

__attribute__((used)) static void
start_order(int type)
{
 int i;

 lastorder = currorder;
 currorder = type;


 if ((lastorder == T_ELLIPSIS) && (type != T_CHAR)) {
  fprintf(stderr, "character value expected");
 }

 for (i = 0; i < COLL_WEIGHTS_MAX; i++) {
  order_weights[i] = -1;
 }
 curr_weight = 0;
}
