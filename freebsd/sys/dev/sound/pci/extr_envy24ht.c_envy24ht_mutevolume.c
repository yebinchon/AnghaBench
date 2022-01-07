
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u_int32_t ;
struct sc_info {int dev; } ;


 int ENVY24HT_MT_VOLIDX ;
 int ENVY24HT_MT_VOLUME ;
 int ENVY24HT_VOL_MUTE ;
 int device_printf (int ,char*,unsigned int) ;
 int envy24ht_wrmt (struct sc_info*,int ,unsigned int,int) ;

__attribute__((used)) static void
envy24ht_mutevolume(struct sc_info *sc, unsigned ch)
{
}
