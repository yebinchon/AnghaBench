
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dev; } ;


 int DELAY (int) ;
 int ENVY24HT_MT_PADDR ;
 int ENVY24HT_MT_PCNT ;
 int ENVY24HT_MT_PCTL ;
 int ENVY24HT_MT_PCTL_PSTART ;
 int ENVY24HT_MT_PCTL_RSTART ;
 int PCMDIR_PLAY ;
 int device_printf (int ,char*,int) ;
 int envy24ht_rdmt (struct sc_info*,int ,int) ;
 int envy24ht_wrmt (struct sc_info*,int ,int,int) ;

__attribute__((used)) static void
envy24ht_start(struct sc_info *sc, int dir)
{
 u_int32_t stat, sw;




 if (dir == PCMDIR_PLAY)
  sw = ENVY24HT_MT_PCTL_PSTART;
 else
  sw = ENVY24HT_MT_PCTL_RSTART;

 stat = envy24ht_rdmt(sc, ENVY24HT_MT_PCTL, 1);
 envy24ht_wrmt(sc, ENVY24HT_MT_PCTL, stat | sw, 1);






 return;
}
