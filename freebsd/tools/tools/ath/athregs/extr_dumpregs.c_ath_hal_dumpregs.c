
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dumpreg {int type; int addr; int * name; } ;
struct TYPE_2__ {int nregs; scalar_t__ show_addrs; scalar_t__ show_names; struct dumpreg** regs; int revs; } ;
typedef int HAL_REVS ;
typedef int FILE ;


 int OS_REG_READ (int ,int) ;
 int ah ;
 int fprintf (int *,char*,...) ;
 scalar_t__ match (struct dumpreg const*,int const*) ;
 TYPE_1__ state ;

__attribute__((used)) static void
ath_hal_dumpregs(FILE *fd, int what)
{
 const HAL_REVS *revs = &state.revs;
 const char *sep = "";
 int i, count, itemsperline;

 count = 0;
 itemsperline = 4;
 if (state.show_names && state.show_addrs)
  itemsperline--;
 for (i = 0; i < state.nregs; i++) {
  const struct dumpreg *dr = state.regs[i];
  if ((what & dr->type) && match(dr, revs)) {
   if (state.show_names && dr->name != ((void*)0)) {
    fprintf(fd, "%s%-8s", sep, dr->name);
    if (state.show_addrs)
     fprintf(fd, " [%04x]", dr->addr);
   } else
    fprintf(fd, "%s%04x", sep, dr->addr);
   fprintf(fd, " %08x", OS_REG_READ(ah, dr->addr));
   sep = " ";
   if ((++count % itemsperline) == 0)
    sep = "\n";
  }
 }
 if (count)
  fprintf(fd, "\n");
}
