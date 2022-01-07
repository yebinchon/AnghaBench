
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_6__ {char* symbol; int * ref; int * expand; } ;
typedef TYPE_1__ collelem_t ;


 scalar_t__ COLLATE_STR_LEN ;
 int COLL_WEIGHTS_MAX ;
 int * RB_FIND (int ,int *,TYPE_1__*) ;
 int RB_INSERT (int ,int *,TYPE_1__*) ;
 TYPE_1__* calloc (int,int) ;
 int elem_by_expand ;
 int elem_by_symbol ;
 int fprintf (int ,char*) ;
 int free (TYPE_1__*) ;
 int new_pri () ;
 int stderr ;
 scalar_t__ wcslen (int *) ;

void
define_collelem(char *name, wchar_t *wcs)
{
 collelem_t *e;
 int i;

 if (wcslen(wcs) >= COLLATE_STR_LEN) {
  fprintf(stderr,"expanded collation element too long");
  return;
 }

 if ((e = calloc(1, sizeof(*e))) == ((void*)0)) {
  fprintf(stderr, "out of memory");
  return;
 }
 e->expand = wcs;
 e->symbol = name;







 for (i = 0; i < COLL_WEIGHTS_MAX; i++) {
  e->ref[i] = new_pri();
 }


 if ((RB_FIND(elem_by_symbol, &elem_by_symbol, e) != ((void*)0)) ||
     (RB_FIND(elem_by_expand, &elem_by_expand, e) != ((void*)0))) {
  fprintf(stderr, "duplicate collating element definition");
  free(e);
  return;
 }
 RB_INSERT(elem_by_symbol, &elem_by_symbol, e);
 RB_INSERT(elem_by_expand, &elem_by_expand, e);
}
