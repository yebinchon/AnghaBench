
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_fb_helper_crtc {int dummy; } ;
struct drm_fb_helper_connector {struct drm_connector* connector; } ;
struct drm_fb_helper {int connector_count; int crtc_count; struct drm_fb_helper_crtc* crtc_info; struct drm_fb_helper_connector** connector_info; struct drm_device* dev; } ;
struct drm_encoder {int possible_crtcs; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_2__ {int num_connector; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct drm_connector_helper_funcs {struct drm_encoder* (* best_encoder ) (struct drm_connector*) ;} ;
struct drm_connector {scalar_t__ status; struct drm_connector_helper_funcs* helper_private; } ;


 int DRM_MEM_KMS ;
 int M_NOWAIT ;
 int M_ZERO ;
 scalar_t__ connector_status_connected ;
 scalar_t__ drm_has_cmdline_mode (struct drm_fb_helper_connector*) ;
 scalar_t__ drm_has_preferred_mode (struct drm_fb_helper_connector*,int,int) ;
 int drm_mode_equal (struct drm_display_mode*,struct drm_display_mode*) ;
 int free (struct drm_fb_helper_crtc**,int ) ;
 struct drm_fb_helper_crtc** malloc (int,int ,int) ;
 int memcpy (struct drm_fb_helper_crtc**,struct drm_fb_helper_crtc**,int) ;
 struct drm_encoder* stub1 (struct drm_connector*) ;

__attribute__((used)) static int drm_pick_crtcs(struct drm_fb_helper *fb_helper,
     struct drm_fb_helper_crtc **best_crtcs,
     struct drm_display_mode **modes,
     int n, int width, int height)
{
 int c, o;
 struct drm_device *dev = fb_helper->dev;
 struct drm_connector *connector;
 struct drm_connector_helper_funcs *connector_funcs;
 struct drm_encoder *encoder;
 struct drm_fb_helper_crtc *best_crtc;
 int my_score, best_score, score;
 struct drm_fb_helper_crtc **crtcs, *crtc;
 struct drm_fb_helper_connector *fb_helper_conn;

 if (n == fb_helper->connector_count)
  return 0;

 fb_helper_conn = fb_helper->connector_info[n];
 connector = fb_helper_conn->connector;

 best_crtcs[n] = ((void*)0);
 best_crtc = ((void*)0);
 best_score = drm_pick_crtcs(fb_helper, best_crtcs, modes, n+1, width, height);
 if (modes[n] == ((void*)0))
  return best_score;

 crtcs = malloc(dev->mode_config.num_connector *
   sizeof(struct drm_fb_helper_crtc *), DRM_MEM_KMS, M_NOWAIT | M_ZERO);
 if (!crtcs)
  return best_score;

 my_score = 1;
 if (connector->status == connector_status_connected)
  my_score++;
 if (drm_has_cmdline_mode(fb_helper_conn))
  my_score++;
 if (drm_has_preferred_mode(fb_helper_conn, width, height))
  my_score++;

 connector_funcs = connector->helper_private;
 encoder = connector_funcs->best_encoder(connector);
 if (!encoder)
  goto out;



 for (c = 0; c < fb_helper->crtc_count; c++) {
  crtc = &fb_helper->crtc_info[c];

  if ((encoder->possible_crtcs & (1 << c)) == 0)
   continue;

  for (o = 0; o < n; o++)
   if (best_crtcs[o] == crtc)
    break;

  if (o < n) {

   if (fb_helper->crtc_count > 1)
    continue;

   if (!drm_mode_equal(modes[o], modes[n]))
    continue;
  }

  crtcs[n] = crtc;
  memcpy(crtcs, best_crtcs, n * sizeof(struct drm_fb_helper_crtc *));
  score = my_score + drm_pick_crtcs(fb_helper, crtcs, modes, n + 1,
        width, height);
  if (score > best_score) {
   best_crtc = crtc;
   best_score = score;
   memcpy(best_crtcs, crtcs,
          dev->mode_config.num_connector *
          sizeof(struct drm_fb_helper_crtc *));
  }
 }
out:
 free(crtcs, DRM_MEM_KMS);
 return best_score;
}
