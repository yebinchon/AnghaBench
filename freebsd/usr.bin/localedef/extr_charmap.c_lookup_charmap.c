
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ wchar_t ;
struct TYPE_4__ {char const* name; scalar_t__ wc; } ;
typedef TYPE_1__ charmap_t ;


 TYPE_1__* RB_FIND (int ,int *,TYPE_1__*) ;
 int cmap_sym ;

int
lookup_charmap(const char *sym, wchar_t *wc)
{
 charmap_t srch;
 charmap_t *n;

 srch.name = sym;
 n = RB_FIND(cmap_sym, &cmap_sym, &srch);
 if (n && n->wc != (wchar_t)-1) {
  if (wc)
   *wc = n->wc;
  return (0);
 }
 return (-1);
}
