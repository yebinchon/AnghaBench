
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm_channel {int dummy; } ;


 int SND_CHN_T_FL ;
 int SND_CHN_T_FR ;
 int SND_VOL_C_MASTER ;
 int chn_setvolume_matrix (struct pcm_channel*,int ,int ,int) ;

int
chn_setvolume(struct pcm_channel *c, int left, int right)
{
 int ret;

 ret = chn_setvolume_matrix(c, SND_VOL_C_MASTER, SND_CHN_T_FL, left);
 ret |= chn_setvolume_matrix(c, SND_VOL_C_MASTER, SND_CHN_T_FR,
     right) << 8;

 return (ret);
}
