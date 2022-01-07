
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_sigdata {scalar_t__ context; TYPE_1__* lock; } ;
struct TYPE_2__ {unsigned int lock; } ;


 scalar_t__ _DRM_LOCKING_CONTEXT (unsigned int) ;
 unsigned int _DRM_LOCK_CONT ;
 int _DRM_LOCK_IS_HELD (unsigned int) ;
 unsigned int cmpxchg (unsigned int*,unsigned int,unsigned int) ;

__attribute__((used)) static int drm_notifier(void *priv)
{
 struct drm_sigdata *s = (struct drm_sigdata *) priv;
 unsigned int old, new, prev;


 if (!s->lock || !_DRM_LOCK_IS_HELD(s->lock->lock)
     || _DRM_LOCKING_CONTEXT(s->lock->lock) != s->context)
  return 1;



 do {
  old = s->lock->lock;
  new = old | _DRM_LOCK_CONT;
  prev = cmpxchg(&s->lock->lock, old, new);
 } while (prev != old);
 return 0;
}
