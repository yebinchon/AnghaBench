
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct drm_device {int * _vblank_time; } ;


 int DRM_VBLANKTIME_RBSIZE ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void clear_vblank_timestamps(struct drm_device *dev, int crtc)
{
 memset(&dev->_vblank_time[crtc * DRM_VBLANKTIME_RBSIZE], 0,
  DRM_VBLANKTIME_RBSIZE * sizeof(struct timeval));
}
