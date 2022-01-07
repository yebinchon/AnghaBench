
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int master; scalar_t__ magic; } ;
struct drm_device {int dummy; } ;
struct drm_auth {scalar_t__ magic; } ;
typedef scalar_t__ drm_magic_t ;


 int DRM_DEBUG (char*,scalar_t__) ;
 int drm_add_magic (int ,struct drm_file*,scalar_t__) ;
 scalar_t__ drm_find_file (int ,scalar_t__) ;
 int drm_magic_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int drm_getmagic(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 static drm_magic_t sequence = 0;
 struct drm_auth *auth = data;


 if (file_priv->magic) {
  auth->magic = file_priv->magic;
 } else {
  do {
   mtx_lock(&drm_magic_lock);
   if (!sequence)
    ++sequence;
   auth->magic = sequence++;
   mtx_unlock(&drm_magic_lock);
  } while (drm_find_file(file_priv->master, auth->magic));
  file_priv->magic = auth->magic;
  drm_add_magic(file_priv->master, file_priv, auth->magic);
 }

 DRM_DEBUG("%u\n", auth->magic);

 return 0;
}
