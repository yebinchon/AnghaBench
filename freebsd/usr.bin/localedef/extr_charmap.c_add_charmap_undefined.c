
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ wchar_t ;
struct TYPE_4__ {char* name; scalar_t__ wc; } ;
typedef TYPE_1__ charmap_t ;


 TYPE_1__* RB_FIND (int ,int *,TYPE_1__*) ;
 int add_charmap_impl (char*,int,int ) ;
 int cmap_sym ;
 int free (char*) ;
 scalar_t__ undefok ;
 int warn (char*,char*) ;

void
add_charmap_undefined(char *sym)
{
 charmap_t srch;
 charmap_t *cm = ((void*)0);

 srch.name = sym;
 cm = RB_FIND(cmap_sym, &cmap_sym, &srch);

 if ((undefok == 0) && ((cm == ((void*)0)) || (cm->wc == (wchar_t)-1))) {
  warn("undefined symbol <%s>", sym);
  add_charmap_impl(sym, -1, 0);
 } else {
  free(sym);
 }
}
