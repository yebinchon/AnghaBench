
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ grant_ref_t ;


 scalar_t__ GNTTAB_LIST_END ;
 scalar_t__ __predict_false (int) ;
 scalar_t__ gnttab_entry (scalar_t__) ;

int
gnttab_claim_grant_reference(grant_ref_t *private_head)
{
 grant_ref_t g = *private_head;

 if (__predict_false(g == GNTTAB_LIST_END))
  return (g);
 *private_head = gnttab_entry(g);
 return (g);
}
