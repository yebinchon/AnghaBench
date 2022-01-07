
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_pending_event {int dummy; } ;


 int DRM_MEM_VBLANK ;
 int free (struct drm_pending_event*,int ) ;

__attribute__((used)) static void
drm_vblank_event_destroy(struct drm_pending_event *e)
{

 free(e, DRM_MEM_VBLANK);
}
