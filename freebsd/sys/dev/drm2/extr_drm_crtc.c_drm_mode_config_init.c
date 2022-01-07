
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ num_encoder; scalar_t__ num_crtc; scalar_t__ num_connector; scalar_t__ num_fb; int mutex; int crtc_names; int plane_list; int property_blob_list; int property_list; int encoder_list; int connector_list; int crtc_list; int fb_list; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int INIT_LIST_HEAD (int *) ;
 int drm_gem_names_init (int *) ;
 int drm_mode_create_standard_connector_properties (struct drm_device*) ;
 int sx_init (int *,char*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

void drm_mode_config_init(struct drm_device *dev)
{
 sx_init(&dev->mode_config.mutex, "kmslk");
 INIT_LIST_HEAD(&dev->mode_config.fb_list);
 INIT_LIST_HEAD(&dev->mode_config.crtc_list);
 INIT_LIST_HEAD(&dev->mode_config.connector_list);
 INIT_LIST_HEAD(&dev->mode_config.encoder_list);
 INIT_LIST_HEAD(&dev->mode_config.property_list);
 INIT_LIST_HEAD(&dev->mode_config.property_blob_list);
 INIT_LIST_HEAD(&dev->mode_config.plane_list);
 drm_gem_names_init(&dev->mode_config.crtc_names);

 sx_xlock(&dev->mode_config.mutex);
 drm_mode_create_standard_connector_properties(dev);
 sx_xunlock(&dev->mode_config.mutex);


 dev->mode_config.num_fb = 0;
 dev->mode_config.num_connector = 0;
 dev->mode_config.num_crtc = 0;
 dev->mode_config.num_encoder = 0;
}
