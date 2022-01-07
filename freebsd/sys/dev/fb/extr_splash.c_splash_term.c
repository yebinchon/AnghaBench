
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int video_adapter_t ;
struct TYPE_2__ {int (* term ) (int *) ;} ;


 int EINVAL ;
 int SPLASH_TERM ;
 int * splash_adp ;
 int splash_arg ;
 int splash_callback (int ,int ) ;
 TYPE_1__* splash_decoder ;
 int stub1 (int ,int ) ;
 int stub2 (int *) ;

int
splash_term(video_adapter_t *adp)
{
 int error = 0;

 if (splash_adp != adp)
  return EINVAL;
 if (splash_decoder != ((void*)0)) {
  if (splash_callback != ((void*)0))
   error = (*splash_callback)(SPLASH_TERM, splash_arg);
  if (error == 0 && splash_decoder->term)
   error = (*splash_decoder->term)(adp);
  if (error == 0)
   splash_decoder = ((void*)0);
 }
 return error;
}
