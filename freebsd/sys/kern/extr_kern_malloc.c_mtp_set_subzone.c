
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malloc_type_internal {scalar_t__ mti_zone; } ;
struct malloc_type {struct malloc_type_internal* ks_handle; } ;



__attribute__((used)) static void
mtp_set_subzone(struct malloc_type *mtp)
{
 struct malloc_type_internal *mtip;

 mtip = mtp->ks_handle;
 mtip->mti_zone = 0;
}
