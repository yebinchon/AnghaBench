
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mqfs_node {int mn_type; int mn_fileno; struct mqfs_node* mn_parent; } ;
struct mqfs_info {struct mqfs_node* mi_root; int mi_unrhdr; } ;


 int KASSERT (int ,char*) ;
 int alloc_unr (int ) ;







__attribute__((used)) static void
mqfs_fileno_alloc(struct mqfs_info *mi, struct mqfs_node *mn)
{

 if (mn->mn_parent && !mn->mn_parent->mn_fileno)
  mqfs_fileno_alloc(mi, mn->mn_parent);

 switch (mn->mn_type) {
 case 130:
 case 133:
 case 132:
 case 129:
  mn->mn_fileno = alloc_unr(mi->mi_unrhdr);
  break;
 case 128:
  KASSERT(mn->mn_parent != ((void*)0),
      ("mqfstype_this node has no parent"));
  mn->mn_fileno = mn->mn_parent->mn_fileno;
  break;
 case 131:
  KASSERT(mn->mn_parent != ((void*)0),
      ("mqfstype_parent node has no parent"));
  if (mn->mn_parent == mi->mi_root) {
   mn->mn_fileno = mn->mn_parent->mn_fileno;
   break;
  }
  KASSERT(mn->mn_parent->mn_parent != ((void*)0),
      ("mqfstype_parent node has no grandparent"));
  mn->mn_fileno = mn->mn_parent->mn_parent->mn_fileno;
  break;
 default:
  KASSERT(0,
      ("mqfs_fileno_alloc() called for unknown type node: %d",
   mn->mn_type));
  break;
 }
}
