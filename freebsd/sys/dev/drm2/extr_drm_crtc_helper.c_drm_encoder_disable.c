
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder_helper_funcs {int (* dpms ) (struct drm_encoder*,int ) ;int (* disable ) (struct drm_encoder*) ;} ;
struct drm_encoder {struct drm_encoder_helper_funcs* helper_private; } ;


 int DRM_MODE_DPMS_OFF ;
 int stub1 (struct drm_encoder*) ;
 int stub2 (struct drm_encoder*,int ) ;

__attribute__((used)) static void
drm_encoder_disable(struct drm_encoder *encoder)
{
 struct drm_encoder_helper_funcs *encoder_funcs = encoder->helper_private;

 if (encoder_funcs->disable)
  (*encoder_funcs->disable)(encoder);
 else
  (*encoder_funcs->dpms)(encoder, DRM_MODE_DPMS_OFF);
}
