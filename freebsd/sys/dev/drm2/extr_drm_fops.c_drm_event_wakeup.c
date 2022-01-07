
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_pending_event {struct drm_file* file_priv; } ;
struct drm_file {int event_poll; int event_space; TYPE_1__* minor; } ;
struct drm_device {int event_lock; } ;
struct TYPE_2__ {struct drm_device* dev; } ;


 int MA_OWNED ;
 int mtx_assert (int *,int ) ;
 int selwakeup (int *) ;
 int wakeup (int *) ;

void
drm_event_wakeup(struct drm_pending_event *e)
{
 struct drm_file *file_priv;
 struct drm_device *dev;

 file_priv = e->file_priv;
 dev = file_priv->minor->dev;
 mtx_assert(&dev->event_lock, MA_OWNED);

 wakeup(&file_priv->event_space);
 selwakeup(&file_priv->event_poll);
}
