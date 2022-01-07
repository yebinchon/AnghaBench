
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct snd_mixer {int dummy; } ;
struct mtx {int dummy; } ;


 int mix_getdevinfo (struct snd_mixer*) ;
 struct mtx* mixer_get_lock (struct snd_mixer*) ;
 int mtx_lock (struct mtx*) ;
 scalar_t__ mtx_owned (struct mtx*) ;
 int mtx_unlock (struct mtx*) ;
 int uaudio_mixer_set (int ,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int
ua_mixer_set(struct snd_mixer *m, unsigned type, unsigned left, unsigned right)
{
 struct mtx *mtx = mixer_get_lock(m);
 uint8_t do_unlock;

 if (mtx_owned(mtx)) {
  do_unlock = 0;
 } else {
  do_unlock = 1;
  mtx_lock(mtx);
 }
 uaudio_mixer_set(mix_getdevinfo(m), type, left, right);
 if (do_unlock) {
  mtx_unlock(mtx);
 }
 return (left | (right << 8));
}
