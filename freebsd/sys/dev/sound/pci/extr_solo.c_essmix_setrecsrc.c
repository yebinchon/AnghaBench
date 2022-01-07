
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_char ;
struct snd_mixer {int dummy; } ;
struct ess_info {int dummy; } ;






 int ess_setmixer (struct ess_info*,int,int) ;
 struct ess_info* mix_getdevinfo (struct snd_mixer*) ;

__attribute__((used)) static u_int32_t
essmix_setrecsrc(struct snd_mixer *m, u_int32_t src)
{
     struct ess_info *sc = mix_getdevinfo(m);
     u_char recdev;

     switch (src) {
 case 131:
  recdev = 0x02;
  break;

 case 129:
  recdev = 0x06;
  break;

 case 130:
  recdev = 0x05;
  break;

 case 128:
 default:
  recdev = 0x00;
  src = 128;
  break;
 }

 ess_setmixer(sc, 0x1c, recdev);

 return src;
}
