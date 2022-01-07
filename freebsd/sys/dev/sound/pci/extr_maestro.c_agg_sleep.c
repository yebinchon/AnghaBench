
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agg_info {int lock; } ;


 int PWAIT ;
 int hz ;
 int msleep (struct agg_info*,int *,int ,char const*,int) ;

__attribute__((used)) static void
agg_sleep(struct agg_info *sc, const char *wmesg, int msec)
{
 int timo;

 timo = msec * hz / 1000;
 if (timo == 0)
  timo = 1;
 msleep(sc, &sc->lock, PWAIT, wmesg, timo);
}
