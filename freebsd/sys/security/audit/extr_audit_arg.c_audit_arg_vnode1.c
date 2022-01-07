
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct TYPE_2__ {int ar_arg_vnode1; } ;
struct kaudit_record {TYPE_1__ k_ar; } ;


 int ARG_CLEAR_VALID (struct kaudit_record*,int ) ;
 int ARG_SET_VALID (struct kaudit_record*,int ) ;
 int ARG_VNODE1 ;
 int audit_arg_vnode (struct vnode*,int *) ;
 struct kaudit_record* currecord () ;

void
audit_arg_vnode1(struct vnode *vp)
{
 struct kaudit_record *ar;
 int error;

 ar = currecord();
 if (ar == ((void*)0))
  return;

 ARG_CLEAR_VALID(ar, ARG_VNODE1);
 error = audit_arg_vnode(vp, &ar->k_ar.ar_arg_vnode1);
 if (error == 0)
  ARG_SET_VALID(ar, ARG_VNODE1);
}
