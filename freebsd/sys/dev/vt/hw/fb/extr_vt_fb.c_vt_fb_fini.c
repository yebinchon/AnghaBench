
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_device {int * vd_video_dev; } ;



void
vt_fb_fini(struct vt_device *vd, void *softc)
{

 vd->vd_video_dev = ((void*)0);
}
