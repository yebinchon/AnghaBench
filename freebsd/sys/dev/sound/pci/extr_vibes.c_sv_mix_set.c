
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct snd_mixer {int dummy; } ;
struct sc_info {int dummy; } ;


 struct sc_info* mix_getdevinfo (struct snd_mixer*) ;
 int sv_gain (struct sc_info*,int ,int ,int ) ;

__attribute__((used)) static int
sv_mix_set(struct snd_mixer *m, u_int32_t dev, u_int32_t left, u_int32_t right)
{
 struct sc_info *sc = mix_getdevinfo(m);
 return sv_gain(sc, dev, left, right);
}
