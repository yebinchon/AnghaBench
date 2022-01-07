
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uid_t ;
struct TYPE_3__ {int pipc_mode; int pipc_gid; int pipc_uid; } ;
struct TYPE_4__ {TYPE_1__ ar_arg_pipc_perm; } ;
struct kaudit_record {TYPE_2__ k_ar; } ;
typedef int mode_t ;
typedef int gid_t ;


 int ARG_POSIX_IPC_PERM ;
 int ARG_SET_VALID (struct kaudit_record*,int ) ;
 struct kaudit_record* currecord () ;

void
audit_arg_posix_ipc_perm(uid_t uid, gid_t gid, mode_t mode)
{
 struct kaudit_record *ar;

 ar = currecord();
 if (ar == ((void*)0))
  return;

 ar->k_ar.ar_arg_pipc_perm.pipc_uid = uid;
 ar->k_ar.ar_arg_pipc_perm.pipc_gid = gid;
 ar->k_ar.ar_arg_pipc_perm.pipc_mode = mode;
 ARG_SET_VALID(ar, ARG_POSIX_IPC_PERM);
}
