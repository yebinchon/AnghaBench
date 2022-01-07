
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int grant_ref_t ;
typedef int domid_t ;
struct TYPE_2__ {unsigned long frame; int flags; int domid; } ;


 int GTF_permit_access ;
 int GTF_readonly ;
 scalar_t__ __predict_false (int) ;
 int get_free_entries (int,int*) ;
 TYPE_1__* shared ;
 int wmb () ;

int
gnttab_grant_foreign_access(domid_t domid, unsigned long frame, int readonly,
 grant_ref_t *result)
{
 int error, ref;

 error = get_free_entries(1, &ref);

 if (__predict_false(error))
  return (error);

 shared[ref].frame = frame;
 shared[ref].domid = domid;
 wmb();
 shared[ref].flags = GTF_permit_access | (readonly ? GTF_readonly : 0);

 if (result)
  *result = ref;

 return (0);
}
