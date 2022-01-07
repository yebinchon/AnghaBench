
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u_int32_t ;
struct sc_info {int dev; } ;


 int ENVY24_MT_VOLIDX ;
 int ENVY24_MT_VOLUME ;
 int ENVY24_VOL_MUTE ;
 int device_printf (int ,char*,unsigned int) ;
 int envy24_wrmt (struct sc_info*,int ,unsigned int,int) ;

__attribute__((used)) static void
envy24_mutevolume(struct sc_info *sc, unsigned ch)
{
 u_int32_t vol;




 vol = ENVY24_VOL_MUTE << 8 | ENVY24_VOL_MUTE;
 envy24_wrmt(sc, ENVY24_MT_VOLIDX, ch * 2, 1);
 envy24_wrmt(sc, ENVY24_MT_VOLUME, vol, 2);
 envy24_wrmt(sc, ENVY24_MT_VOLIDX, ch * 2 + 1, 1);
 envy24_wrmt(sc, ENVY24_MT_VOLUME, vol, 2);
}
