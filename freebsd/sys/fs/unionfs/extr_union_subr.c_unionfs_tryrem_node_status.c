
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unionfs_node_status {scalar_t__ uns_lower_opencnt; scalar_t__ uns_upper_opencnt; } ;
struct unionfs_node {int dummy; } ;


 int ASSERT_VOP_ELOCKED (int ,char*) ;
 int KASSERT (int,char*) ;
 int LIST_REMOVE (struct unionfs_node_status*,int ) ;
 int M_TEMP ;
 int UNIONFSTOV (struct unionfs_node*) ;
 int free (struct unionfs_node_status*,int ) ;
 int uns_list ;

void
unionfs_tryrem_node_status(struct unionfs_node *unp,
      struct unionfs_node_status *unsp)
{
 KASSERT(((void*)0) != unsp, ("null pointer"));
 ASSERT_VOP_ELOCKED(UNIONFSTOV(unp), "unionfs_get_node_status");

 if (0 < unsp->uns_lower_opencnt || 0 < unsp->uns_upper_opencnt)
  return;

 LIST_REMOVE(unsp, uns_list);
 free(unsp, M_TEMP);
}
