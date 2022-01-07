
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct radix_node_head {int rh; int (* rnh_deladdr ) (int ,int ,int *) ;} ;
struct radix_node {int rn_mask; int rn_key; } ;
struct netcred {struct ucred* netc_anon; } ;


 int M_NETADDR ;
 int crfree (struct ucred*) ;
 int free (struct radix_node*,int ) ;
 int stub1 (int ,int ,int *) ;

__attribute__((used)) static int
vfs_free_netcred(struct radix_node *rn, void *w)
{
 struct radix_node_head *rnh = (struct radix_node_head *) w;
 struct ucred *cred;

 (*rnh->rnh_deladdr) (rn->rn_key, rn->rn_mask, &rnh->rh);
 cred = ((struct netcred *)rn)->netc_anon;
 if (cred != ((void*)0))
  crfree(cred);
 free(rn, M_NETADDR);
 return (0);
}
