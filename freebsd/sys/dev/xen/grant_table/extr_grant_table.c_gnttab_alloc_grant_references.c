
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int grant_ref_t ;


 scalar_t__ __predict_false (int) ;
 int get_free_entries (int ,int*) ;

int
gnttab_alloc_grant_references(uint16_t count, grant_ref_t *head)
{
 int ref, error;

 error = get_free_entries(count, &ref);
 if (__predict_false(error))
  return (error);

 *head = ref;
 return (0);
}
