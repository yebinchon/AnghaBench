
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MTX_DEF ;
 int kobj_mtx ;
 int kobj_mutex_inited ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static void
kobj_init_mutex(void *arg)
{
 if (!kobj_mutex_inited) {
  mtx_init(&kobj_mtx, "kobj", ((void*)0), MTX_DEF);
  kobj_mutex_inited = 1;
 }
}
