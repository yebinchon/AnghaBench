
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpu401 {int mid; scalar_t__ flags; void* cookie; int si; int timer; } ;
typedef int mpu401_intr_t ;
typedef int kobj_t ;
typedef int kobj_class_t ;
typedef int driver_intr_t ;


 int M_MIDI ;
 int M_NOWAIT ;
 int M_ZERO ;
 int callout_init (int *,int) ;
 int free (struct mpu401*,int ) ;
 int kobj_init (int ,int ) ;
 struct mpu401* malloc (int,int ,int) ;
 int midi_init (int *,int ,int ,struct mpu401*) ;
 int mpu401_class ;
 int * mpu401_intr ;
 int printf (char*) ;

struct mpu401 *
mpu401_init(kobj_class_t cls, void *cookie, driver_intr_t softintr,
    mpu401_intr_t ** cb)
{
 struct mpu401 *m;

 *cb = ((void*)0);
 m = malloc(sizeof(*m), M_MIDI, M_NOWAIT | M_ZERO);

 if (!m)
  return ((void*)0);

 kobj_init((kobj_t)m, cls);

 callout_init(&m->timer, 1);

 m->si = softintr;
 m->cookie = cookie;
 m->flags = 0;

 m->mid = midi_init(&mpu401_class, 0, 0, m);
 if (!m->mid)
  goto err;
 *cb = mpu401_intr;
 return m;
err:
 printf("mpu401_init error\n");
 free(m, M_MIDI);
 return ((void*)0);
}
