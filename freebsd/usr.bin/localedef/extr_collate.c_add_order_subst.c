
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int key; scalar_t__* ref; } ;
typedef TYPE_1__ subst_t ;
typedef int srch ;


 int COLLATE_SUBST_PRIORITY ;
 int INTERR ;
 TYPE_1__* RB_FIND (int *,int *,TYPE_1__*) ;
 int RB_INSERT (int *,int *,TYPE_1__*) ;
 int RESOLVED ;
 int add_order_pri (int ) ;
 TYPE_1__* calloc (int,int) ;
 int curr_subst ;
 size_t curr_weight ;
 int fprintf (int ,char*) ;
 int memset (TYPE_1__*,int ,int) ;
 int new_pri () ;
 int* nextsubst ;
 int set_pri (int ,int,int ) ;
 int stderr ;
 scalar_t__* subst_weights ;
 int * substs ;
 int * substs_ref ;

void
add_order_subst(void)
{
 subst_t srch;
 subst_t *s;
 int i;

 (void) memset(&srch, 0, sizeof (srch));
 for (i = 0; i < curr_subst; i++) {
  srch.ref[i] = subst_weights[i];
  subst_weights[i] = 0;
 }
 s = RB_FIND(substs_ref, &substs_ref[curr_weight], &srch);

 if (s == ((void*)0)) {
  if ((s = calloc(1, sizeof(*s))) == ((void*)0)) {
   fprintf(stderr,"out of memory");
   return;
  }
  s->key = new_pri();
  set_pri(s->key,
      (nextsubst[curr_weight] | COLLATE_SUBST_PRIORITY),
      RESOLVED);
  nextsubst[curr_weight] += 1;

  for (i = 0; i < curr_subst; i++) {
   s->ref[i] = srch.ref[i];
  }

  RB_INSERT(substs_ref, &substs_ref[curr_weight], s);

  if (RB_FIND(substs, &substs[curr_weight], s) != ((void*)0)) {
   INTERR;
   return;
  }
  RB_INSERT(substs, &substs[curr_weight], s);
 }
 curr_subst = 0;






 add_order_pri(s->key);
}
