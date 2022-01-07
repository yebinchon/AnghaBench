
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_cmdline_mode {int specified; } ;
struct drm_fb_helper_connector {struct drm_cmdline_mode cmdline_mode; } ;



__attribute__((used)) static bool drm_has_cmdline_mode(struct drm_fb_helper_connector *fb_connector)
{
 struct drm_cmdline_mode *cmdline_mode;
 cmdline_mode = &fb_connector->cmdline_mode;
 return cmdline_mode->specified;
}
