
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_property_blob {int length; int head; int data; int base; } ;
struct TYPE_2__ {int property_blob_list; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int DRM_MEM_KMS ;
 int DRM_MODE_OBJECT_BLOB ;
 int M_WAITOK ;
 int M_ZERO ;
 int drm_mode_object_get (struct drm_device*,int *,int ) ;
 int free (struct drm_property_blob*,int ) ;
 int list_add_tail (int *,int *) ;
 struct drm_property_blob* malloc (int,int ,int) ;
 int memcpy (int ,void*,int) ;

__attribute__((used)) static struct drm_property_blob *drm_property_create_blob(struct drm_device *dev, int length,
         void *data)
{
 struct drm_property_blob *blob;
 int ret;

 if (!length || !data)
  return ((void*)0);

 blob = malloc(sizeof(struct drm_property_blob)+length, DRM_MEM_KMS,
     M_WAITOK | M_ZERO);
 if (!blob)
  return ((void*)0);

 ret = drm_mode_object_get(dev, &blob->base, DRM_MODE_OBJECT_BLOB);
 if (ret) {
  free(blob, DRM_MEM_KMS);
  return ((void*)0);
 }

 blob->length = length;

 memcpy(blob->data, data, length);

 list_add_tail(&blob->head, &dev->mode_config.property_blob_list);
 return blob;
}
