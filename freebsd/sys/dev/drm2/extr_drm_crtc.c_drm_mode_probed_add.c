
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int head; } ;
struct drm_connector {int probed_modes; } ;


 int list_add (int *,int *) ;

void drm_mode_probed_add(struct drm_connector *connector,
    struct drm_display_mode *mode)
{
 list_add(&mode->head, &connector->probed_modes);
}
