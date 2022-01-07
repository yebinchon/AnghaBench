
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int flags; } ;
struct drm_connector {int* audio_latency; int* video_latency; int * latency_present; } ;


 int DRM_MODE_FLAG_INTERLACE ;
 int max (int,int ) ;
 int min (int,int) ;

int drm_av_sync_delay(struct drm_connector *connector,
        struct drm_display_mode *mode)
{
 int i = !!(mode->flags & DRM_MODE_FLAG_INTERLACE);
 int a, v;

 if (!connector->latency_present[0])
  return 0;
 if (!connector->latency_present[1])
  i = 0;

 a = connector->audio_latency[i];
 v = connector->video_latency[i];




 if (a == 255 || v == 255)
  return 0;





 if (a)
  a = min(2 * (a - 1), 500);
 if (v)
  v = min(2 * (v - 1), 500);

 return max(v - a, 0);
}
