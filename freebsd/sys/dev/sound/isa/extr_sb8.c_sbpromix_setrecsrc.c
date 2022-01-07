
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
typedef int u_char ;
struct snd_mixer {int dummy; } ;
struct sb_info {int dummy; } ;


 int RECORD_SRC ;
 scalar_t__ SOUND_MASK_CD ;
 scalar_t__ SOUND_MASK_LINE ;
 scalar_t__ SOUND_MASK_MIC ;
 struct sb_info* mix_getdevinfo (struct snd_mixer*) ;
 int sb_getmixer (struct sb_info*,int ) ;
 int sb_setmixer (struct sb_info*,int ,int) ;

__attribute__((used)) static u_int32_t
sbpromix_setrecsrc(struct snd_mixer *m, u_int32_t src)
{
     struct sb_info *sb = mix_getdevinfo(m);
     u_char recdev;

 if (src == SOUND_MASK_LINE)
  recdev = 0x06;
 else if (src == SOUND_MASK_CD)
  recdev = 0x02;
 else {
      src = SOUND_MASK_MIC;
      recdev = 0;
 }
 sb_setmixer(sb, RECORD_SRC, recdev | (sb_getmixer(sb, RECORD_SRC) & ~0x07));

 return src;
}
