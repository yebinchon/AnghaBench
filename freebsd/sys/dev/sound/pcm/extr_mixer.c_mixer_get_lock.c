
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {struct mtx* lock; } ;
struct mtx {int dummy; } ;


 struct mtx Giant ;

struct mtx *
mixer_get_lock(struct snd_mixer *m)
{
 if (m->lock == ((void*)0)) {
  return (&Giant);
 }
 return (m->lock);
}
