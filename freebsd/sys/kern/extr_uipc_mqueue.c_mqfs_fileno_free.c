
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mqfs_node {int mn_type; int mn_fileno; } ;
struct mqfs_info {int mi_unrhdr; } ;


 int KASSERT (int ,char*) ;
 int free_unr (int ,int ) ;







__attribute__((used)) static void
mqfs_fileno_free(struct mqfs_info *mi, struct mqfs_node *mn)
{
 switch (mn->mn_type) {
 case 130:
 case 133:
 case 132:
 case 129:
  free_unr(mi->mi_unrhdr, mn->mn_fileno);
  break;
 case 128:
 case 131:

  break;
 default:
  KASSERT(0,
      ("mqfs_fileno_free() called for unknown type node: %d",
   mn->mn_type));
  break;
 }
}
