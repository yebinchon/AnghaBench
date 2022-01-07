
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef void* wchar_t ;
struct TYPE_7__ {void* wc; int * ref; } ;
typedef TYPE_1__ collchar_t ;


 int NUM_WT ;
 TYPE_1__* RB_FIND (int ,int *,TYPE_1__*) ;
 int RB_INSERT (int ,int *,TYPE_1__*) ;
 TYPE_1__* calloc (int,int) ;
 int collchars ;
 int fprintf (int ,char*) ;
 int new_pri () ;
 int stderr ;

__attribute__((used)) static collchar_t *
get_collchar(wchar_t wc, int create)
{
 collchar_t srch;
 collchar_t *cc;
 int i;

 srch.wc = wc;
 cc = RB_FIND(collchars, &collchars, &srch);
 if ((cc == ((void*)0)) && create) {
  if ((cc = calloc(1, sizeof(*cc))) == ((void*)0)) {
   fprintf(stderr, "out of memory");
   return (((void*)0));
  }
  for (i = 0; i < NUM_WT; i++) {
   cc->ref[i] = new_pri();
  }
  cc->wc = wc;
  RB_INSERT(collchars, &collchars, cc);
 }
 return (cc);
}
