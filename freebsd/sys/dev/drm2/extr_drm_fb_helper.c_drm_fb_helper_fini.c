
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_fb_helper {int kernel_fb_list; } ;


 int atomic_notifier_chain_unregister (int *,int *) ;
 int drm_fb_helper_crtc_free (struct drm_fb_helper*) ;
 int kernel_fb_helper_list ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int panic_notifier_list ;
 int paniced ;
 int pr_info (char*) ;
 int sysrq_drm_fb_helper_restore_op ;
 int unregister_sysrq_key (char,int *) ;

void drm_fb_helper_fini(struct drm_fb_helper *fb_helper)
{
 if (!list_empty(&fb_helper->kernel_fb_list)) {
  list_del(&fb_helper->kernel_fb_list);
 }

 drm_fb_helper_crtc_free(fb_helper);

}
