
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef int ocs_os_handle_t ;


 int SPV_ROWLEN ;
 int ocs_free (int ,void**,int) ;

__attribute__((used)) static void
_spv_del(ocs_os_handle_t os, void **a, uint32_t n, uint32_t depth)
{
 if (a) {
  if (depth) {
   uint32_t i;

   for (i = 0; i < n; i ++) {
    _spv_del(os, a[i], n, depth-1);
   }

   ocs_free(os, a, SPV_ROWLEN*sizeof(*a));
  }
 }
}
