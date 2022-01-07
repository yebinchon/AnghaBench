
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * gidset; } ;
struct TYPE_4__ {TYPE_1__ ar_arg_groups; int * ar_arg_envv; int * ar_arg_argv; int * ar_arg_text; int * ar_arg_upath2; int * ar_arg_upath1; } ;
struct kaudit_record {TYPE_2__ k_ar; int * k_udata; } ;


 int KASSERT (int,char*) ;
 int M_AUDITDATA ;
 int M_AUDITGIDSET ;
 int M_AUDITPATH ;
 int M_AUDITTEXT ;
 int free (int *,int ) ;

__attribute__((used)) static void
audit_record_dtor(void *mem, int size, void *arg)
{
 struct kaudit_record *ar;

 KASSERT(sizeof(*ar) == size, ("audit_record_dtor: wrong size"));

 ar = mem;
 if (ar->k_ar.ar_arg_upath1 != ((void*)0))
  free(ar->k_ar.ar_arg_upath1, M_AUDITPATH);
 if (ar->k_ar.ar_arg_upath2 != ((void*)0))
  free(ar->k_ar.ar_arg_upath2, M_AUDITPATH);
 if (ar->k_ar.ar_arg_text != ((void*)0))
  free(ar->k_ar.ar_arg_text, M_AUDITTEXT);
 if (ar->k_udata != ((void*)0))
  free(ar->k_udata, M_AUDITDATA);
 if (ar->k_ar.ar_arg_argv != ((void*)0))
  free(ar->k_ar.ar_arg_argv, M_AUDITTEXT);
 if (ar->k_ar.ar_arg_envv != ((void*)0))
  free(ar->k_ar.ar_arg_envv, M_AUDITTEXT);
 if (ar->k_ar.ar_arg_groups.gidset != ((void*)0))
  free(ar->k_ar.ar_arg_groups.gidset, M_AUDITGIDSET);
}
