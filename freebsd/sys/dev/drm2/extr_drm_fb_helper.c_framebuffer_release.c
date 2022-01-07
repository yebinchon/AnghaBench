
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {struct fb_info* fb_priv; } ;


 int DRM_MEM_KMS ;
 int free (struct fb_info*,int ) ;

void
framebuffer_release(struct fb_info *info)
{

 free(info->fb_priv, DRM_MEM_KMS);
 free(info, DRM_MEM_KMS);
}
