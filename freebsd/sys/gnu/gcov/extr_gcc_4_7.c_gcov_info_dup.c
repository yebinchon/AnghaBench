
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gcov_info {int n_functions; TYPE_1__** functions; int * filename; int * next; } ;
struct gcov_fn_info {int dummy; } ;
struct gcov_ctr_info {int num; struct gcov_info* values; } ;
typedef int gcov_type ;
struct TYPE_2__ {struct gcov_ctr_info* ctrs; } ;


 int M_GCOV ;
 int M_NOWAIT ;
 int M_ZERO ;
 int gcov_info_free (struct gcov_info*) ;
 void* malloc (size_t,int ,int) ;
 int memcpy (struct gcov_info*,struct gcov_info*,size_t) ;
 unsigned int num_counter_active (struct gcov_info*) ;
 int * strdup_flags (int *,int ,int) ;

struct gcov_info *
gcov_info_dup(struct gcov_info *info)
{
 struct gcov_info *dup;
 struct gcov_ctr_info *dci_ptr;
 struct gcov_ctr_info *sci_ptr;
 unsigned int active;
 unsigned int fi_idx;
 unsigned int ct_idx;
 size_t fi_size;
 size_t cv_size;

 if ((dup = malloc(sizeof(*dup), M_GCOV, M_NOWAIT|M_ZERO)) == ((void*)0))
  return (((void*)0));
 memcpy(dup, info, sizeof(*dup));

 dup->next = ((void*)0);
 dup->filename = ((void*)0);
 dup->functions = ((void*)0);

 dup->filename = strdup_flags(info->filename, M_GCOV, M_NOWAIT);
 if (dup->filename == ((void*)0))
  goto err_free;

 dup->functions = malloc(info->n_functions * sizeof(struct gcov_fn_info *), M_GCOV, M_NOWAIT|M_ZERO);
 if (dup->functions == ((void*)0))
  goto err_free;
 active = num_counter_active(info);
 fi_size = sizeof(struct gcov_fn_info);
 fi_size += sizeof(struct gcov_ctr_info) * active;

 for (fi_idx = 0; fi_idx < info->n_functions; fi_idx++) {
  dup->functions[fi_idx] = malloc(fi_size, M_GCOV, M_NOWAIT|M_ZERO);
  if (!dup->functions[fi_idx])
   goto err_free;

  *(dup->functions[fi_idx]) = *(info->functions[fi_idx]);

  sci_ptr = info->functions[fi_idx]->ctrs;
  dci_ptr = dup->functions[fi_idx]->ctrs;

  for (ct_idx = 0; ct_idx < active; ct_idx++) {

   cv_size = sizeof(gcov_type) * sci_ptr->num;

   dci_ptr->values = malloc(cv_size, M_GCOV, M_NOWAIT);

   if (!dci_ptr->values)
    goto err_free;

   dci_ptr->num = sci_ptr->num;
   memcpy(dci_ptr->values, sci_ptr->values, cv_size);

   sci_ptr++;
   dci_ptr++;
  }
 }

 return (dup);
err_free:
 gcov_info_free(dup);
 return (((void*)0));
}
