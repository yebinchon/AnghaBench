
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int dummy; } ;


 int ETIMEDOUT ;
 int YDSXGR_PRISTATUSADR ;
 int YDSXGR_SECSTATUSADR ;
 int YDSXG_AC97TIMEOUT ;
 int ds_rd (struct sc_info*,int,int) ;

__attribute__((used)) static int
ds_cdbusy(struct sc_info *sc, int sec)
{
 int i, reg;

 reg = sec? YDSXGR_SECSTATUSADR : YDSXGR_PRISTATUSADR;
 i = YDSXG_AC97TIMEOUT;
 while (i > 0) {
  if (!(ds_rd(sc, reg, 2) & 0x8000))
   return 0;
  i--;
 }
 return ETIMEDOUT;
}
