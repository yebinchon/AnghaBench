
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int8_t ;
struct dumpreg {int type; int addr; } ;
struct ath_diag {size_t ad_in_size; int * ad_in_data; } ;
typedef int r ;
typedef int * caddr_t ;
struct TYPE_5__ {int nregs; struct dumpreg** regs; int revs; } ;
struct TYPE_4__ {int start; int end; } ;
typedef int HAL_REVS ;
typedef TYPE_1__ HAL_REGRANGE ;


 int exit (int) ;
 int fprintf (int ,char*) ;
 scalar_t__ malloc (size_t) ;
 scalar_t__ match (struct dumpreg const*,int const*) ;
 int memcpy (int *,TYPE_1__*,int) ;
 TYPE_2__ state ;
 int stderr ;

__attribute__((used)) static int
ath_hal_setupregs(struct ath_diag *atd, int what)
{
 const HAL_REVS *revs = &state.revs;
 HAL_REGRANGE r;
 size_t space = 0;
 u_int8_t *cp;
 int i, brun, erun;

 brun = erun = -1;
 for (i = 0; i < state.nregs; i++) {
  const struct dumpreg *dr = state.regs[i];
  if ((what & dr->type) && match(dr, revs)) {
   if (erun + 4 != dr->addr) {
    if (brun != -1)
     space += sizeof(HAL_REGRANGE);
    brun = erun = dr->addr;
   } else
    erun = dr->addr;
  }
 }
 space += sizeof(HAL_REGRANGE);

 atd->ad_in_data = (caddr_t) malloc(space);
 if (atd->ad_in_data == ((void*)0)) {
  fprintf(stderr, "Cannot malloc memory for registers!\n");
  exit(-1);
 }
 atd->ad_in_size = space;
 cp = (u_int8_t *) atd->ad_in_data;
 brun = erun = -1;
 for (i = 0; i < state.nregs; i++) {
  const struct dumpreg *dr = state.regs[i];
  if ((what & dr->type) && match(dr, revs)) {
   if (erun + 4 != dr->addr) {
    if (brun != -1) {
     r.start = brun, r.end = erun;
     memcpy(cp, &r, sizeof(r));
     cp += sizeof(r);
    }
    brun = erun = dr->addr;
   } else
    erun = dr->addr;
  }
 }
 if (brun != -1) {
  r.start = brun, r.end = erun;
  memcpy(cp, &r, sizeof(r));
  cp += sizeof(r);
 }
 return space / sizeof(uint32_t);
}
