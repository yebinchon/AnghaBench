
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MTX_DEF ;
 int drm_magic_lock ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static int
drm_magic_init(void *arg)
{

 mtx_init(&drm_magic_lock, "drm_getmagic__lock", ((void*)0), MTX_DEF);
 return (0);
}
