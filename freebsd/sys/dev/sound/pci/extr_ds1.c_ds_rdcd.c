
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int cd2id; int type; int rev; } ;
typedef int kobj_t ;


 int YDSXGR_AC97CMDADR ;
 int YDSXGR_PRISTATUSDATA ;
 int YDSXGR_SECSTATUSDATA ;
 int YDSXG_AC97READCMD ;
 scalar_t__ ds_cdbusy (struct sc_info*,int) ;
 int ds_rd (struct sc_info*,int,int) ;
 int ds_wr (struct sc_info*,int ,int,int) ;

__attribute__((used)) static int
ds_rdcd(kobj_t obj, void *devinfo, int regno)
{
 struct sc_info *sc = (struct sc_info *)devinfo;
 int sec, cid, i;
 u_int32_t cmd, reg;

 sec = regno & 0x100;
 regno &= 0xff;
 cid = sec? (sc->cd2id << 8) : 0;
 reg = sec? YDSXGR_SECSTATUSDATA : YDSXGR_PRISTATUSDATA;
 if (sec && cid == 0)
  return 0xffffffff;

 cmd = YDSXG_AC97READCMD | cid | regno;
 ds_wr(sc, YDSXGR_AC97CMDADR, cmd, 2);

 if (ds_cdbusy(sc, sec))
  return 0xffffffff;

 if (sc->type == 11 && sc->rev < 2)
  for (i = 0; i < 600; i++)
   ds_rd(sc, reg, 2);

 return ds_rd(sc, reg, 2);
}
