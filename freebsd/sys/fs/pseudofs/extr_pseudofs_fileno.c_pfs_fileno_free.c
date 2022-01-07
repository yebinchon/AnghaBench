
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pfs_node {int pn_type; int pn_fileno; TYPE_1__* pn_info; } ;
struct TYPE_2__ {int pi_unrhdr; } ;


 int KASSERT (int ,char*) ;
 int free_unr (int ,int ) ;
 int pfs_assert_not_owned (struct pfs_node*) ;
void
pfs_fileno_free(struct pfs_node *pn)
{

 pfs_assert_not_owned(pn);

 switch (pn->pn_type) {
 case 130:

  return;
 case 135:
 case 134:
 case 129:
 case 131:
  free_unr(pn->pn_info->pi_unrhdr, pn->pn_fileno);
  break;
 case 128:
 case 132:

  break;
 case 133:
  KASSERT(0,
      ("pfs_fileno_free() called for pfstype_none node"));
  break;
 }
}
