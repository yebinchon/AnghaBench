
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct mn_softc {char* name; int* riqb; int* tiqb; TYPE_1__* m32x; } ;
struct TYPE_2__ {int stat; int lstat; } ;


 int f54_intr (struct mn_softc*) ;
 int mn_rx_intr (struct mn_softc*,int) ;
 int mn_tx_intr (struct mn_softc*,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
mn_intr(void *xsc)
{
 struct mn_softc *sc;
 u_int32_t stat, lstat, u;
 int i, j;

 sc = xsc;
 stat = sc->m32x->stat;
 lstat = sc->m32x->lstat;





 if (stat & ~0xc200) {
  printf("%s: I stat=%08x lstat=%08x\n", sc->name, stat, lstat);
 }

 if ((stat & 0x200) || (lstat & 2))
  f54_intr(sc);

 for (j = i = 0; i < 64; i ++) {
  u = sc->riqb[i];
  if (u) {
   sc->riqb[i] = 0;
   mn_rx_intr(sc, u);
   if ((u & ~0x1f) == 0x30000800 || (u & ~0x1f) == 0x30000b00)
    continue;
   u &= ~0x30000400;
   if ((u & ~0x1f) == 0x00000900)
    continue;
   if (!(u & ~0x1f))
    continue;
   if (!j)
    printf("%s*: RIQB:", sc->name);
   printf(" [%d]=%08x", i, u);
   j++;
  }
 }
 if (j)
     printf("\n");

 for (j = i = 0; i < 64; i ++) {
  u = sc->tiqb[i];
  if (u) {
   sc->tiqb[i] = 0;
   mn_tx_intr(sc, u);
   if ((u & ~0x1f) == 0x20000800)
    continue;
   u &= ~0x20000000;
   if (!u)
    continue;
   if (!j)
    printf("%s*: TIQB:", sc->name);
   printf(" [%d]=%08x", i, u);
   j++;
  }
 }
 if (j)
  printf("\n");
 sc->m32x->stat = stat;
}
