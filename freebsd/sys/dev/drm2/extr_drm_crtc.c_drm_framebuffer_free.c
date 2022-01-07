
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_framebuffer {TYPE_1__* funcs; } ;
struct TYPE_2__ {int (* destroy ) (struct drm_framebuffer*) ;} ;


 int stub1 (struct drm_framebuffer*) ;

__attribute__((used)) static void drm_framebuffer_free(struct drm_framebuffer *fb)
{
 fb->funcs->destroy(fb);
}
