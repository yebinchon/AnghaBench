
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct thr_param {scalar_t__ rtp; } ;
struct rtprio {int dummy; } ;


 int copyin (scalar_t__,struct rtprio*,int) ;
 int thr_new_initthr ;
 int thread_create (struct thread*,struct rtprio*,int ,struct thr_param*) ;

int
kern_thr_new(struct thread *td, struct thr_param *param)
{
 struct rtprio rtp, *rtpp;
 int error;

 rtpp = ((void*)0);
 if (param->rtp != 0) {
  error = copyin(param->rtp, &rtp, sizeof(struct rtprio));
  if (error)
   return (error);
  rtpp = &rtp;
 }
 return (thread_create(td, rtpp, thr_new_initthr, param));
}
