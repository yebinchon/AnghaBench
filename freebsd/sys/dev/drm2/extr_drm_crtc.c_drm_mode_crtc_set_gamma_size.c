
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct drm_crtc {int gamma_size; int gamma_store; } ;


 int DRM_MEM_KMS ;
 int ENOMEM ;
 int M_WAITOK ;
 int M_ZERO ;
 int malloc (int,int ,int) ;

int drm_mode_crtc_set_gamma_size(struct drm_crtc *crtc,
      int gamma_size)
{
 crtc->gamma_size = gamma_size;

 crtc->gamma_store = malloc(gamma_size * sizeof(uint16_t) * 3,
     DRM_MEM_KMS, M_WAITOK | M_ZERO);
 if (!crtc->gamma_store) {
  crtc->gamma_size = 0;
  return -ENOMEM;
 }

 return 0;
}
