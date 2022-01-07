
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct taskqueue {int tq_mutex; scalar_t__ tq_spin; } ;
struct mtx {int dummy; } ;


 int msleep (void*,int *,int ,char const*,int ) ;
 int msleep_spin (void*,struct mtx*,char const*,int ) ;

__attribute__((used)) static __inline int
TQ_SLEEP(struct taskqueue *tq, void *p, const char *wm)
{
 if (tq->tq_spin)
  return (msleep_spin(p, (struct mtx *)&tq->tq_mutex, wm, 0));
 return (msleep(p, &tq->tq_mutex, 0, wm, 0));
}
