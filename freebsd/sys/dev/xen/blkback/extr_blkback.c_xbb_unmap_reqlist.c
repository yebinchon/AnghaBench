
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct xbb_xen_reqlist {size_t nr_segments; scalar_t__* gnt_handles; } ;
struct gnttab_unmap_grant_ref {scalar_t__ handle; scalar_t__ dev_bus_addr; int host_addr; } ;


 int GNTTABOP_unmap_grant_ref ;
 scalar_t__ GRANT_REF_INVALID ;
 int HYPERVISOR_grant_table_op (int ,struct gnttab_unmap_grant_ref*,size_t) ;
 int KASSERT (int,char*) ;
 int XBB_MAX_SEGMENTS_PER_REQLIST ;
 int xbb_get_gntaddr (struct xbb_xen_reqlist*,size_t,int ) ;

__attribute__((used)) static void
xbb_unmap_reqlist(struct xbb_xen_reqlist *reqlist)
{
 struct gnttab_unmap_grant_ref unmap[XBB_MAX_SEGMENTS_PER_REQLIST];
 u_int i;
 u_int invcount;
 int error;

 invcount = 0;
 for (i = 0; i < reqlist->nr_segments; i++) {

  if (reqlist->gnt_handles[i] == GRANT_REF_INVALID)
   continue;

  unmap[invcount].host_addr = xbb_get_gntaddr(reqlist, i, 0);
  unmap[invcount].dev_bus_addr = 0;
  unmap[invcount].handle = reqlist->gnt_handles[i];
  reqlist->gnt_handles[i] = GRANT_REF_INVALID;
  invcount++;
 }

 error = HYPERVISOR_grant_table_op(GNTTABOP_unmap_grant_ref,
       unmap, invcount);
 KASSERT(error == 0, ("Grant table operation failed"));
}
