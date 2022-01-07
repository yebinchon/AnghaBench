
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct thr_create_initthr_args {int tid; int ctx; } ;
struct thr_create_args {int id; int ctx; } ;


 int copyin (int ,int *,int) ;
 int thr_create_initthr ;
 int thread_create (struct thread*,int *,int ,struct thr_create_initthr_args*) ;

int
sys_thr_create(struct thread *td, struct thr_create_args *uap)

{
 struct thr_create_initthr_args args;
 int error;

 if ((error = copyin(uap->ctx, &args.ctx, sizeof(args.ctx))))
  return (error);
 args.tid = uap->id;
 return (thread_create(td, ((void*)0), thr_create_initthr, &args));
}
