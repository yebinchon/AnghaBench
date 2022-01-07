
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int grant_ref_t ;


 int put_free_entry (int ) ;

void
gnttab_free_grant_reference(grant_ref_t ref)
{

 put_free_entry(ref);
}
