
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_3__ {scalar_t__ gidset_size; int * gidset; } ;
struct TYPE_4__ {TYPE_1__ ar_arg_groups; } ;
struct kaudit_record {TYPE_2__ k_ar; } ;
typedef int gid_t ;


 int ARG_GROUPSET ;
 int ARG_SET_VALID (struct kaudit_record*,int ) ;
 int KASSERT (int,char*) ;
 int M_AUDITGIDSET ;
 int M_WAITOK ;
 struct kaudit_record* currecord () ;
 int * malloc (int,int ,int ) ;
 scalar_t__ ngroups_max ;

void
audit_arg_groupset(gid_t *gidset, u_int gidset_size)
{
 u_int i;
 struct kaudit_record *ar;

 KASSERT(gidset_size <= ngroups_max + 1,
     ("audit_arg_groupset: gidset_size > (kern.ngroups + 1)"));

 ar = currecord();
 if (ar == ((void*)0))
  return;

 if (ar->k_ar.ar_arg_groups.gidset == ((void*)0))
  ar->k_ar.ar_arg_groups.gidset = malloc(
      sizeof(gid_t) * gidset_size, M_AUDITGIDSET, M_WAITOK);

 for (i = 0; i < gidset_size; i++)
  ar->k_ar.ar_arg_groups.gidset[i] = gidset[i];
 ar->k_ar.ar_arg_groups.gidset_size = gidset_size;
 ARG_SET_VALID(ar, ARG_GROUPSET);
}
