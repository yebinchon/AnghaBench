
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct drm_file {int event_poll; int event_list; } ;
struct drm_device {int event_lock; } ;
struct cdev {int dummy; } ;


 int CTR0 (int ,char*) ;
 int CTR1 (int ,char*,int) ;
 int DRM_ERROR (char*) ;
 int EINVAL ;
 int KTR_DRM ;
 int POLLIN ;
 int POLLRDNORM ;
 int devfs_get_cdevpriv (void**) ;
 struct drm_device* drm_get_device_from_kdev (struct cdev*) ;
 scalar_t__ list_empty (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int selrecord (struct thread*,int *) ;

int
drm_poll(struct cdev *kdev, int events, struct thread *td)
{
 struct drm_file *file_priv;
 struct drm_device *dev;
 int error, revents;

 error = devfs_get_cdevpriv((void **)&file_priv);
 if (error != 0) {
  DRM_ERROR("can't find authenticator\n");
  return (EINVAL);
 }

 dev = drm_get_device_from_kdev(kdev);

 revents = 0;
 mtx_lock(&dev->event_lock);
 if ((events & (POLLIN | POLLRDNORM)) != 0) {
  if (list_empty(&file_priv->event_list)) {
   CTR0(KTR_DRM, "drm_poll empty list");
   selrecord(td, &file_priv->event_poll);
  } else {
   revents |= events & (POLLIN | POLLRDNORM);
   CTR1(KTR_DRM, "drm_poll revents %x", revents);
  }
 }
 mtx_unlock(&dev->event_lock);
 return (revents);
}
