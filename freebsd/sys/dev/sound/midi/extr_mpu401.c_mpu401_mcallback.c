
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_midi {int dummy; } ;
struct mpu401 {int flags; int timer; scalar_t__ si; } ;


 int M_RX ;
 int M_RXEN ;
 int M_TX ;
 int M_TXEN ;
 int callout_reset (int *,int,int ,struct mpu401*) ;
 int mpu401_timeout ;
 int printf (char*,char*,char*,char*,char*) ;

__attribute__((used)) static void
mpu401_mcallback(struct snd_midi *sm, void *arg, int flags)
{
 struct mpu401 *m = arg;







 if (flags & M_TXEN && m->si) {
  callout_reset(&m->timer, 1, mpu401_timeout, m);
 }
 m->flags = flags;
}
