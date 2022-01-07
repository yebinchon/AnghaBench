
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_mode_group {scalar_t__ num_encoders; scalar_t__ num_connectors; scalar_t__ num_crtcs; int id_list; } ;
struct TYPE_2__ {scalar_t__ num_encoder; scalar_t__ num_connector; scalar_t__ num_crtc; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int DRM_MEM_KMS ;
 int ENOMEM ;
 int M_WAITOK ;
 int M_ZERO ;
 int malloc (int,int ,int) ;

int drm_mode_group_init(struct drm_device *dev, struct drm_mode_group *group)
{
 uint32_t total_objects = 0;

 total_objects += dev->mode_config.num_crtc;
 total_objects += dev->mode_config.num_connector;
 total_objects += dev->mode_config.num_encoder;

 group->id_list = malloc(total_objects * sizeof(uint32_t),
     DRM_MEM_KMS, M_WAITOK | M_ZERO);
 if (!group->id_list)
  return -ENOMEM;

 group->num_crtcs = 0;
 group->num_connectors = 0;
 group->num_encoders = 0;
 return 0;
}
