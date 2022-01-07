
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long drm_linux_timer_hz_mask ;
 scalar_t__ hz ;

__attribute__((used)) static void
drm_linux_timer_init(void *arg)
{






        drm_linux_timer_hz_mask = 1;
        while (drm_linux_timer_hz_mask < (unsigned long)hz)
                drm_linux_timer_hz_mask *= 2;
        drm_linux_timer_hz_mask--;
}
