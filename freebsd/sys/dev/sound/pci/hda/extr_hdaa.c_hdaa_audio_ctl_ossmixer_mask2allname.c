
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int SOUND_MIXER_NRDEVICES ;
 int bzero (char*,size_t) ;
 char** ossnames ;
 int strlcat (char*,char*,size_t) ;

__attribute__((used)) static char *
hdaa_audio_ctl_ossmixer_mask2allname(uint32_t mask, char *buf, size_t len)
{
 int i, first = 1;

 bzero(buf, len);
 for (i = 0; i < SOUND_MIXER_NRDEVICES; i++) {
  if (mask & (1 << i)) {
   if (first == 0)
    strlcat(buf, ", ", len);
   strlcat(buf, ossnames[i], len);
   first = 0;
  }
 }
 return (buf);
}
