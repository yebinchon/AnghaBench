
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DRM_MEM_KMS ;
 int free (void*,int ) ;

__attribute__((used)) static void
free_vblank_event(void *arg)
{

 free(arg, DRM_MEM_KMS);
}
