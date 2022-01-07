
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int drm_magic_lock ;
 int mtx_destroy (int *) ;

__attribute__((used)) static void
drm_magic_fini(void *arg)
{

 mtx_destroy(&drm_magic_lock);
}
