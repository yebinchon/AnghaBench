
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ active; int* index; int lock; } ;


 scalar_t__ NM_VI_MAX ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 TYPE_1__ nm_vi_indices ;

__attribute__((used)) static int
nm_vi_get_index(void)
{
 int ret;

 mtx_lock(&nm_vi_indices.lock);
 ret = nm_vi_indices.active == NM_VI_MAX ? -1 :
  nm_vi_indices.index[nm_vi_indices.active++];
 mtx_unlock(&nm_vi_indices.lock);
 return ret;
}
