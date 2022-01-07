
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int head; } ;
struct drm_device {int dummy; } ;
struct drm_connector {int user_modes; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static void drm_mode_attachmode(struct drm_device *dev,
    struct drm_connector *connector,
    struct drm_display_mode *mode)
{
 list_add_tail(&mode->head, &connector->user_modes);
}
