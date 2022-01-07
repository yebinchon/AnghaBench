
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int dummy; } ;
struct sc_pcminfo {int dummy; } ;


 struct sc_pcminfo* mix_getdevinfo (struct snd_mixer*) ;

__attribute__((used)) static int
aicmixer_set(struct snd_mixer *m, unsigned dev,
    unsigned left, unsigned right)
{
 struct sc_pcminfo *scp;

 scp = mix_getdevinfo(m);



 return (0);
}
