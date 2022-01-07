
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* va_token; } ;
typedef TYPE_1__ video_adapter_t ;


 int EINVAL ;
 int EPERM ;
 int spltty () ;
 int splx (int) ;

int
vid_release(video_adapter_t *adp, void *id)
{
 int error;
 int s;

 s = spltty();
 if (adp->va_token == ((void*)0)) {
  error = EINVAL;
 } else if (adp->va_token != id) {
  error = EPERM;
 } else {
  adp->va_token = ((void*)0);
  error = 0;
 }
 splx(s);
 return error;
}
