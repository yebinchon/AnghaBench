
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* index; int lock; scalar_t__ active; } ;


 int MTX_DEF ;
 int NM_VI_MAX ;
 int mtx_init (int *,char*,int *,int ) ;
 TYPE_1__ nm_vi_indices ;

void
nm_os_vi_init_index(void)
{
 int i;
 for (i = 0; i < NM_VI_MAX; i++)
  nm_vi_indices.index[i] = i;
 nm_vi_indices.active = 0;
 mtx_init(&nm_vi_indices.lock, "nm_vi_indices_lock", ((void*)0), MTX_DEF);
}
