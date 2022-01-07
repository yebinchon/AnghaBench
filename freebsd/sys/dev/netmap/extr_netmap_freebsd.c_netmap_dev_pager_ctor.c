
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef scalar_t__ vm_ooffset_t ;
typedef scalar_t__ u_short ;
struct ucred {int dummy; } ;
struct netmap_vm_handle_t {int dev; } ;
typedef int intmax_t ;


 int dev_ref (int ) ;
 scalar_t__ netmap_verbose ;
 int nm_prinf (char*,void*,int ,int ,int ) ;

__attribute__((used)) static int
netmap_dev_pager_ctor(void *handle, vm_ooffset_t size, vm_prot_t prot,
  vm_ooffset_t foff, struct ucred *cred, u_short *color)
{
 struct netmap_vm_handle_t *vmh = handle;

 if (netmap_verbose)
  nm_prinf("handle %p size %jd prot %d foff %jd",
   handle, (intmax_t)size, prot, (intmax_t)foff);
 if (color)
  *color = 0;
 dev_ref(vmh->dev);
 return 0;
}
