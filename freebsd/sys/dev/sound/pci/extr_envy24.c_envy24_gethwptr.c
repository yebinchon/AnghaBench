
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int psize; int rsize; int dev; } ;


 int ENVY24_MT_PCNT ;
 int ENVY24_MT_RCNT ;
 int ENVY24_PLAY_BUFUNIT ;
 int ENVY24_REC_BUFUNIT ;
 int PCMDIR_PLAY ;
 int device_printf (int ,char*,int) ;
 int envy24_rdmt (struct sc_info*,int,int) ;

__attribute__((used)) static u_int32_t
envy24_gethwptr(struct sc_info *sc, int dir)
{
 int unit, regno;
 u_int32_t ptr, rtn;




 if (dir == PCMDIR_PLAY) {
  rtn = sc->psize / 4;
  unit = ENVY24_PLAY_BUFUNIT / 4;
  regno = ENVY24_MT_PCNT;
 }
 else {
  rtn = sc->rsize / 4;
  unit = ENVY24_REC_BUFUNIT / 4;
  regno = ENVY24_MT_RCNT;
 }

 ptr = envy24_rdmt(sc, regno, 2);
 rtn -= (ptr + 1);
 rtn /= unit;




 return rtn;
}
