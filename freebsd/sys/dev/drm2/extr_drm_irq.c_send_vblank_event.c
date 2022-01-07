
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {int tv_usec; int tv_sec; } ;
struct TYPE_5__ {unsigned long sequence; int tv_usec; int tv_sec; } ;
struct TYPE_6__ {int pid; TYPE_1__* file_priv; int link; } ;
struct drm_pending_vblank_event {TYPE_2__ event; int pipe; TYPE_3__ base; } ;
struct drm_device {int event_lock; } ;
struct TYPE_4__ {int event_list; } ;


 int CTR3 (int ,char*,int ,int ,unsigned long) ;
 int KTR_DRM ;
 int WARN_ON_SMP (int) ;
 int drm_event_wakeup (TYPE_3__*) ;
 int list_add_tail (int *,int *) ;
 int mtx_owned (int *) ;

__attribute__((used)) static void send_vblank_event(struct drm_device *dev,
  struct drm_pending_vblank_event *e,
  unsigned long seq, struct timeval *now)
{
 WARN_ON_SMP(!mtx_owned(&dev->event_lock));
 e->event.sequence = seq;
 e->event.tv_sec = now->tv_sec;
 e->event.tv_usec = now->tv_usec;

 list_add_tail(&e->base.link,
        &e->base.file_priv->event_list);
 drm_event_wakeup(&e->base);
 CTR3(KTR_DRM, "vblank_event_delivered %d %d %d",
     e->base.pid, e->pipe, e->event.sequence);
}
