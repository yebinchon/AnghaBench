
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_6__ {int pri; } ;
typedef TYPE_1__ collpri_t ;
struct TYPE_9__ {int wc; int * ref; } ;
struct TYPE_8__ {int * ref; } ;
struct TYPE_7__ {int * ref; } ;


 int INTERR ;
 int NUM_WT ;
 int REFER ;
 int RESOLVED ;





 TYPE_5__* currchar ;
 TYPE_4__* currelem ;
 int currorder ;
 TYPE_3__* currundef ;
 int ellipsis_start ;
 int* ellipsis_weights ;
 TYPE_1__* get_pri (int) ;
 int nextpri ;
 int* order_weights ;
 int * pri_undefined ;
 int set_pri (int ,int,int ) ;

void
end_order(void)
{
 int i;
 int32_t pri;
 int32_t ref;
 collpri_t *p;


 pri = nextpri;

 switch (currorder) {
 case 132:
  for (i = 0; i < NUM_WT; i++) {
   if (((ref = order_weights[i]) < 0) ||
       ((p = get_pri(ref)) == ((void*)0)) ||
       (p->pri == -1)) {

    set_pri(currchar->ref[i], pri, RESOLVED);
   } else {
    set_pri(currchar->ref[i], ref, REFER);
   }
   order_weights[i] = -1;
  }


  ellipsis_start = currchar->wc + 1;
  currchar = ((void*)0);
  break;

 case 130:

  for (i = 0; i < NUM_WT; i++) {
   ellipsis_weights[i] = order_weights[i];
   order_weights[i] = -1;
  }
  break;

 case 131:
  if (currelem == ((void*)0)) {
   INTERR;
  } else {
   for (i = 0; i < NUM_WT; i++) {

    if (((ref = order_weights[i]) < 0) ||
        ((p = get_pri(ref)) == ((void*)0)) ||
        (p->pri == -1)) {
     set_pri(currelem->ref[i], pri,
         RESOLVED);
    } else {
     set_pri(currelem->ref[i], ref, REFER);
    }
    order_weights[i] = -1;
   }
  }
  break;

 case 128:
  for (i = 0; i < NUM_WT; i++) {
   if (((ref = order_weights[i]) < 0) ||
       ((p = get_pri(ref)) == ((void*)0)) ||
       (p->pri == -1)) {
    set_pri(pri_undefined[i], -1, RESOLVED);
   } else {
    set_pri(pri_undefined[i], ref, REFER);
   }
   order_weights[i] = -1;
  }
  break;

 case 129:
  for (i = 0; i < NUM_WT; i++) {
   if (((ref = order_weights[i]) < 0) ||
       ((p = get_pri(ref)) == ((void*)0)) ||
       (p->pri == -1)) {
    set_pri(currundef->ref[i], pri, RESOLVED);
   } else {
    set_pri(currundef->ref[i], ref, REFER);
   }
   order_weights[i] = -1;
  }
  break;

 default:
  INTERR;
 }

 nextpri++;
}
