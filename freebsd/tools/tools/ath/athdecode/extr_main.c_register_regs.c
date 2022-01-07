
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct dumpreg {int srevMin; int srevMax; int phyMin; int phyMax; scalar_t__ addr; int * name; } ;
struct TYPE_2__ {int nregs; struct dumpreg** regs; } ;


 int MAXREGS ;
 int errx (int,char*) ;
 int qsort (struct dumpreg**,int,int,int ) ;
 int regcompar ;
 TYPE_1__ state ;
 scalar_t__ strcmp (int *,int *) ;

void
register_regs(struct dumpreg *chipregs, u_int nchipregs,
 int def_srev_min, int def_srev_max, int def_phy_min, int def_phy_max)
{
 const int existing_regs = state.nregs;
 int i, j;

 for (i = 0; i < nchipregs; i++) {
  struct dumpreg *nr = &chipregs[i];
  if (nr->srevMin == 0)
   nr->srevMin = def_srev_min;
  if (nr->srevMax == 0)
   nr->srevMax = def_srev_max;
  if (nr->phyMin == 0)
   nr->phyMin = def_phy_min;
  if (nr->phyMax == 0)
   nr->phyMax = def_phy_max;
  for (j = 0; j < existing_regs; j++) {
   struct dumpreg *r = state.regs[j];




   if (nr->addr == r->addr &&
       (nr->name == r->name ||
        (nr->name != ((void*)0) && r->name != ((void*)0) &&
        strcmp(nr->name, r->name) == 0))) {
    if (nr->srevMin < r->srevMin &&
        (r->srevMin <= nr->srevMax &&
         nr->srevMax+1 <= r->srevMax)) {
     r->srevMin = nr->srevMin;
     goto skip;
    }
    if (nr->srevMax > r->srevMax &&
        (r->srevMin <= nr->srevMin &&
         nr->srevMin <= r->srevMax)) {
     r->srevMax = nr->srevMax;
     goto skip;
    }
   }
   if (r->addr > nr->addr)
    break;
  }



  if (state.nregs == MAXREGS)
   errx(-1, "too many registers; bump MAXREGS");
  state.regs[state.nregs++] = nr;
 skip:
  ;
 }
 qsort(state.regs, state.nregs, sizeof(struct dumpreg *), regcompar);
}
