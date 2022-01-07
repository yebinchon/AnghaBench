
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int video_adapter_t ;
struct TYPE_2__ {int (* splash ) (int *,int) ;} ;


 int ENODEV ;
 TYPE_1__* splash_decoder ;
 int stub1 (int *,int) ;

int
splash(video_adapter_t *adp, int on)
{
 if (splash_decoder != ((void*)0))
  return (*splash_decoder->splash)(adp, on);
 return ENODEV;
}
