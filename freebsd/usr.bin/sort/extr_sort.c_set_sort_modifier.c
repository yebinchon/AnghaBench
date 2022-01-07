
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sort_mods {int bflag; int dflag; int fflag; int gflag; int iflag; int Rflag; int Mflag; int nflag; int rflag; int Vflag; int hflag; int func; } ;
struct TYPE_2__ {int complex_sort; } ;


 int get_sort_func (struct sort_mods*) ;
 int initialise_months () ;
 int need_hint ;
 int need_random ;
 int print_symbols_on_debug ;
 TYPE_1__ sort_opts_vals ;

__attribute__((used)) static bool
set_sort_modifier(struct sort_mods *sm, int c)
{

 if (sm == ((void*)0))
  return (1);

 switch (c){
 case 'b':
  sm->bflag = 1;
  break;
 case 'd':
  sm->dflag = 1;
  break;
 case 'f':
  sm->fflag = 1;
  break;
 case 'g':
  sm->gflag = 1;
  need_hint = 1;
  break;
 case 'i':
  sm->iflag = 1;
  break;
 case 'R':
  sm->Rflag = 1;
  need_hint = 1;
  need_random = 1;
  break;
 case 'M':
  initialise_months();
  sm->Mflag = 1;
  need_hint = 1;
  break;
 case 'n':
  sm->nflag = 1;
  need_hint = 1;
  print_symbols_on_debug = 1;
  break;
 case 'r':
  sm->rflag = 1;
  break;
 case 'V':
  sm->Vflag = 1;
  break;
 case 'h':
  sm->hflag = 1;
  need_hint = 1;
  print_symbols_on_debug = 1;
  break;
 default:
  return (0);
 }

 sort_opts_vals.complex_sort = 1;
 sm->func = get_sort_func(sm);
 return (1);
}
