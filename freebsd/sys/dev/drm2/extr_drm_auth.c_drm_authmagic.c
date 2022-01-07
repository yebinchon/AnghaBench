
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int authenticated; int master; } ;
struct drm_device {int dummy; } ;
struct drm_auth {int magic; } ;


 int DRM_DEBUG (char*,int ) ;
 int EINVAL ;
 struct drm_file* drm_find_file (int ,int ) ;
 int drm_remove_magic (int ,int ) ;

int drm_authmagic(struct drm_device *dev, void *data,
    struct drm_file *file_priv)
{
 struct drm_auth *auth = data;
 struct drm_file *file;

 DRM_DEBUG("%u\n", auth->magic);
 if ((file = drm_find_file(file_priv->master, auth->magic))) {
  file->authenticated = 1;
  drm_remove_magic(file_priv->master, auth->magic);
  return 0;
 }
 return -EINVAL;
}
