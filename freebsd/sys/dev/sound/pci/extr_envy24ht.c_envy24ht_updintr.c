
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int16_t ;
struct sc_info {int* blk; int psize; int rsize; int dev; } ;


 int ENVY24HT_MT_INT_MASK ;
 int ENVY24HT_MT_INT_PMASK ;
 int ENVY24HT_MT_INT_RMASK ;
 int ENVY24HT_MT_PCNT ;
 int ENVY24HT_MT_PTERM ;
 int ENVY24HT_MT_RCNT ;
 int ENVY24HT_MT_RTERM ;
 int PCMDIR_PLAY ;
 int device_printf (int ,char*,int,...) ;
 int envy24ht_rdmt (struct sc_info*,int,int) ;
 int envy24ht_wrmt (struct sc_info*,int,int,int) ;

__attribute__((used)) static void
envy24ht_updintr(struct sc_info *sc, int dir)
{
 int regptr, regintr;
 u_int32_t mask, intr;
 u_int32_t ptr, size, cnt;
 u_int16_t blk;




 if (dir == PCMDIR_PLAY) {
  blk = sc->blk[0];
  size = sc->psize / 4;
  regptr = ENVY24HT_MT_PCNT;
  regintr = ENVY24HT_MT_PTERM;
  mask = ~ENVY24HT_MT_INT_PMASK;
 }
 else {
  blk = sc->blk[1];
  size = sc->rsize / 4;
  regptr = ENVY24HT_MT_RCNT;
  regintr = ENVY24HT_MT_RTERM;
  mask = ~ENVY24HT_MT_INT_RMASK;
 }

 ptr = size - envy24ht_rdmt(sc, regptr, 2) - 1;





 cnt = blk - 1;



 envy24ht_wrmt(sc, regintr, cnt, 2);
 intr = envy24ht_rdmt(sc, ENVY24HT_MT_INT_MASK, 1);



 envy24ht_wrmt(sc, ENVY24HT_MT_INT_MASK, intr & mask, 1);





 return;
}
