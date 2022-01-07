
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_group {int * id_list; } ;


 int DRM_MEM_KMS ;
 int free (int *,int ) ;

void drm_mode_group_free(struct drm_mode_group *group)
{
 free(group->id_list, DRM_MEM_KMS);
 group->id_list = ((void*)0);
}
