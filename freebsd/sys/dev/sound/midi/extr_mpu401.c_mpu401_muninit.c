
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_midi {int dummy; } ;
struct mpu401 {int cookie; } ;


 int MPUFOI_UNINIT (struct mpu401*,int ) ;

int
mpu401_muninit(struct snd_midi *sm, void *arg)
{
 struct mpu401 *m = arg;

 return MPUFOI_UNINIT(m, m->cookie);
}
