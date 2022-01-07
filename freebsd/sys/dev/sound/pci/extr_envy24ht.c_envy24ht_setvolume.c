
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int* left; int* right; int dev; } ;


 int ENVY24HT_MT_VOLIDX ;
 int ENVY24HT_MT_VOLUME ;
 int device_printf (int ,char*,unsigned int) ;
 int envy24ht_wrmt (struct sc_info*,int ,int,int) ;

__attribute__((used)) static void
envy24ht_setvolume(struct sc_info *sc, unsigned ch)
{







}
