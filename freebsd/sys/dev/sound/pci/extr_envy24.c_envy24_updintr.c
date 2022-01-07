
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int16_t ;
struct sc_info {int* blk; int psize; int rsize; int dev; } ;


 int ENVY24_MT_INT ;
 int ENVY24_MT_INT_PMASK ;
 int ENVY24_MT_INT_RMASK ;
 int ENVY24_MT_PCNT ;
 int ENVY24_MT_PTERM ;
 int ENVY24_MT_RCNT ;
 int ENVY24_MT_RTERM ;
 int PCMDIR_PLAY ;
 int device_printf (int ,char*,int,...) ;
 int envy24_rdmt (struct sc_info*,int,int) ;
 int envy24_wrmt (struct sc_info*,int,int,int) ;

__attribute__((used)) static void
envy24_updintr(struct sc_info *sc, int dir)
{
 int regptr, regintr;
 u_int32_t mask, intr;
 u_int32_t ptr, size, cnt;
 u_int16_t blk;




 if (dir == PCMDIR_PLAY) {
  blk = sc->blk[0];
  size = sc->psize / 4;
  regptr = ENVY24_MT_PCNT;
  regintr = ENVY24_MT_PTERM;
  mask = ~ENVY24_MT_INT_PMASK;
 }
 else {
  blk = sc->blk[1];
  size = sc->rsize / 4;
  regptr = ENVY24_MT_RCNT;
  regintr = ENVY24_MT_RTERM;
  mask = ~ENVY24_MT_INT_RMASK;
 }

 ptr = size - envy24_rdmt(sc, regptr, 2) - 1;





 cnt = blk - 1;



 envy24_wrmt(sc, regintr, cnt, 2);
 intr = envy24_rdmt(sc, ENVY24_MT_INT, 1);



 envy24_wrmt(sc, ENVY24_MT_INT, intr & mask, 1);





 return;
}
