
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t va_index; } ;
typedef TYPE_1__ video_adapter_t ;


 int ENOENT ;
 TYPE_1__** adapter ;
 size_t adapters ;
 int ** vidsw ;

int
vid_unregister(video_adapter_t *adp)
{
 if ((adp->va_index < 0) || (adp->va_index >= adapters))
  return ENOENT;
 if (adapter[adp->va_index] != adp)
  return ENOENT;

 adapter[adp->va_index] = ((void*)0);
 vidsw[adp->va_index] = ((void*)0);
 return 0;
}
