
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cuse_server {int dummy; } ;


 int CUSE_DEVICES_MAX ;
 int EINVAL ;
 struct cuse_server** cuse_alloc_unit ;
 int* cuse_alloc_unit_id ;

__attribute__((used)) static int
cuse_free_unit_by_id_locked(struct cuse_server *pcs, int id)
{
 int n;
 int found = 0;

 for (n = 0; n != CUSE_DEVICES_MAX; n++) {
  if (cuse_alloc_unit[n] == pcs) {
   if (cuse_alloc_unit_id[n] == id || id == -1) {
    cuse_alloc_unit[n] = ((void*)0);
    cuse_alloc_unit_id[n] = 0;
    found = 1;
   }
  }
 }

 return (found ? 0 : EINVAL);
}
