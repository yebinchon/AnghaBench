
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int grant_ref_t ;
typedef int domid_t ;


 scalar_t__ __predict_false (int) ;
 int get_free_entries (int,int*) ;
 int gnttab_grant_foreign_transfer_ref (int,int ,unsigned long) ;

int
gnttab_grant_foreign_transfer(domid_t domid, unsigned long pfn,
    grant_ref_t *result)
{
 int error, ref;

 error = get_free_entries(1, &ref);
 if (__predict_false(error))
  return (error);

 gnttab_grant_foreign_transfer_ref(ref, domid, pfn);

 *result = ref;
 return (0);
}
