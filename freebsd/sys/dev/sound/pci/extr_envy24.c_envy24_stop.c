
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dev; } ;


 int ENVY24_MT_PCTL ;
 int ENVY24_MT_PCTL_PSTART ;
 int ENVY24_MT_PCTL_RSTART ;
 int PCMDIR_PLAY ;
 int device_printf (int ,char*,int) ;
 int envy24_rdmt (struct sc_info*,int ,int) ;
 int envy24_wrmt (struct sc_info*,int ,int,int) ;

__attribute__((used)) static void
envy24_stop(struct sc_info *sc, int dir)
{
 u_int32_t stat, sw;




 if (dir == PCMDIR_PLAY)
  sw = ~ENVY24_MT_PCTL_PSTART;
 else
  sw = ~ENVY24_MT_PCTL_RSTART;

 stat = envy24_rdmt(sc, ENVY24_MT_PCTL, 1);
 envy24_wrmt(sc, ENVY24_MT_PCTL, stat & sw, 1);

 return;
}
