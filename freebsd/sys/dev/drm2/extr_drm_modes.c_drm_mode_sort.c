
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 int drm_list_sort (int *,struct list_head*,int ) ;
 int drm_mode_compare ;

void drm_mode_sort(struct list_head *mode_list)
{
 drm_list_sort(((void*)0), mode_list, drm_mode_compare);
}
