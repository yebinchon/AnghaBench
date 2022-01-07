
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ wchar_t ;
struct TYPE_5__ {char const* name; scalar_t__ wc; } ;
typedef TYPE_1__ charmap_t ;


 int * RB_FIND (int ,int *,TYPE_1__*) ;
 int RB_INSERT (int ,int *,TYPE_1__*) ;
 TYPE_1__* calloc (int,int) ;
 int cmap_sym ;
 int cmap_wc ;
 int errf (char*) ;

__attribute__((used)) static void
add_charmap_impl(const char *sym, wchar_t wc, int nodups)
{
 charmap_t srch;
 charmap_t *n = ((void*)0);

 srch.wc = wc;
 srch.name = sym;





 if ((wc != (wchar_t)-1) && ((RB_FIND(cmap_wc, &cmap_wc, &srch)) == ((void*)0))) {
  if ((n = calloc(1, sizeof (*n))) == ((void*)0)) {
   errf("out of memory");
   return;
  }
  n->wc = wc;
  RB_INSERT(cmap_wc, &cmap_wc, n);
 }

 if (sym) {
  if (RB_FIND(cmap_sym, &cmap_sym, &srch) != ((void*)0)) {
   if (nodups) {
    errf("duplicate character definition");
   }
   return;
  }
  if ((n == ((void*)0)) && ((n = calloc(1, sizeof (*n))) == ((void*)0))) {
   errf("out of memory");
   return;
  }
  n->wc = wc;
  n->name = sym;

  RB_INSERT(cmap_sym, &cmap_sym, n);
 }
}
