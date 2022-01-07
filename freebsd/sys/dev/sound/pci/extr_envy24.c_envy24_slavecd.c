
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dev; } ;


 int DELAY (int) ;
 int ENVY24_MT_AC97CMD ;
 int ENVY24_MT_AC97CMD_CLD ;
 int ENVY24_MT_AC97CMD_RDY ;
 int ENVY24_MT_AC97CMD_WRM ;
 int ENVY24_TIMEOUT ;
 int device_printf (int ,char*) ;
 int envy24_rdmt (struct sc_info*,int ,int) ;
 int envy24_wrmt (struct sc_info*,int ,int,int) ;

__attribute__((used)) static int
envy24_slavecd(struct sc_info *sc)
{
 u_int32_t data;
 int i;




 envy24_wrmt(sc, ENVY24_MT_AC97CMD,
     ENVY24_MT_AC97CMD_CLD | ENVY24_MT_AC97CMD_WRM, 1);
 DELAY(10);
 envy24_wrmt(sc, ENVY24_MT_AC97CMD, 0, 1);
 DELAY(1000);
 for (i = 0; i < ENVY24_TIMEOUT; i++) {
  data = envy24_rdmt(sc, ENVY24_MT_AC97CMD, 1);
  if (data & ENVY24_MT_AC97CMD_RDY) {
   return 0;
  }
 }

 return -1;
}
