
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int vp; } ;
struct TYPE_4__ {int (* doio ) (int ,struct uio*,int ,int ,struct thread*) ;int fp; } ;
struct TYPE_6__ {TYPE_2__ vop_args; TYPE_1__ fop_args; } ;
struct vn_io_fault_args {int kind; int cred; int flags; TYPE_3__ args; } ;
struct uio {int uio_rw; } ;
struct thread {int dummy; } ;


 int UIO_READ ;
 int UIO_WRITE ;


 int VOP_READ (int ,struct uio*,int ,int ) ;
 int VOP_WRITE (int ,struct uio*,int ,int ) ;
 int panic (char*,int,int ) ;
 int stub1 (int ,struct uio*,int ,int ,struct thread*) ;
 int vm_fault_disable_pagefaults () ;
 int vm_fault_enable_pagefaults (int) ;

__attribute__((used)) static int
vn_io_fault_doio(struct vn_io_fault_args *args, struct uio *uio,
    struct thread *td)
{
 int error, save;

 error = 0;
 save = vm_fault_disable_pagefaults();
 switch (args->kind) {
 case 129:
  error = (args->args.fop_args.doio)(args->args.fop_args.fp,
      uio, args->cred, args->flags, td);
  break;
 case 128:
  if (uio->uio_rw == UIO_READ) {
   error = VOP_READ(args->args.vop_args.vp, uio,
       args->flags, args->cred);
  } else if (uio->uio_rw == UIO_WRITE) {
   error = VOP_WRITE(args->args.vop_args.vp, uio,
       args->flags, args->cred);
  }
  break;
 default:
  panic("vn_io_fault_doio: unknown kind of io %d %d",
      args->kind, uio->uio_rw);
 }
 vm_fault_enable_pagefaults(save);
 return (error);
}
