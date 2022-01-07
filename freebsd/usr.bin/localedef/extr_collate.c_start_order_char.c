
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ wchar_t ;
typedef int int32_t ;
struct TYPE_4__ {int pri; } ;
typedef TYPE_1__ collpri_t ;
struct TYPE_5__ {int * ref; } ;
typedef TYPE_2__ collchar_t ;


 int INTERR ;
 int NUM_WT ;
 int REFER ;
 int RESOLVED ;
 int T_CHAR ;
 scalar_t__ T_ELLIPSIS ;
 void* currchar ;
 scalar_t__ ellipsis_start ;
 int* ellipsis_weights ;
 int fprintf (int ,char*) ;
 void* get_collchar (scalar_t__,int) ;
 TYPE_1__* get_pri (int) ;
 scalar_t__ lastorder ;
 int nextpri ;
 int set_pri (int ,int,int ) ;
 int start_order (int ) ;
 int stderr ;

void
start_order_char(wchar_t wc)
{
 collchar_t *cc;
 int32_t ref;

 start_order(T_CHAR);
 if (lastorder == T_ELLIPSIS) {
  int i;

  if (wc < ellipsis_start) {
   fprintf(stderr, "malformed range!");
   return;
  }
  while (ellipsis_start < wc) {






   if ((cc = get_collchar(ellipsis_start, 1)) == ((void*)0)) {
    INTERR;
    return;
   }
   for (i = 0; i < NUM_WT; i++) {
    collpri_t *p;
    if (((ref = ellipsis_weights[i]) == -1) ||
        ((p = get_pri(ref)) == ((void*)0)) ||
        (p->pri == -1)) {
     set_pri(cc->ref[i], nextpri, RESOLVED);
    } else {
     set_pri(cc->ref[i], ref, REFER);
    }
    ellipsis_weights[i] = 0;
   }
   ellipsis_start++;
   nextpri++;
  }
 }

 currchar = get_collchar(wc, 1);
}
