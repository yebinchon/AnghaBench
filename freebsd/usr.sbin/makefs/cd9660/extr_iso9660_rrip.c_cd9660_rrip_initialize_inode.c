
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct ISO_SUSP_ATTRIBUTES {int dummy; } ;
struct TYPE_11__ {int head; TYPE_4__* node; int cn_children; } ;
typedef TYPE_3__ cd9660node ;
struct TYPE_12__ {TYPE_2__* inode; } ;
struct TYPE_9__ {int st_mode; } ;
struct TYPE_10__ {TYPE_1__ st; } ;


 int SUSP_ENTRY_RRIP_PN ;
 int SUSP_ENTRY_RRIP_PX ;
 int SUSP_ENTRY_RRIP_TF ;
 int SUSP_LOC_ENTRY ;
 int SUSP_TYPE_RRIP ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct ISO_SUSP_ATTRIBUTES*,int ) ;
 int cd9660_createSL (TYPE_3__*) ;
 int cd9660node_rrip_pn (struct ISO_SUSP_ATTRIBUTES*,TYPE_4__*) ;
 int cd9660node_rrip_px (struct ISO_SUSP_ATTRIBUTES*,TYPE_4__*) ;
 int cd9660node_rrip_tf (struct ISO_SUSP_ATTRIBUTES*,TYPE_4__*) ;
 struct ISO_SUSP_ATTRIBUTES* cd9660node_susp_create_node (int ,int ,char*,int ) ;
 int rr_ll ;

__attribute__((used)) static void
cd9660_rrip_initialize_inode(cd9660node *node)
{
 struct ISO_SUSP_ATTRIBUTES *attr;







 if ((node->node != ((void*)0)) && (node->node->inode != ((void*)0))) {

  attr = cd9660node_susp_create_node(SUSP_TYPE_RRIP,
   SUSP_ENTRY_RRIP_PX, "PX", SUSP_LOC_ENTRY);
  cd9660node_rrip_px(attr, node->node);

  TAILQ_INSERT_TAIL(&node->head, attr, rr_ll);


  attr = cd9660node_susp_create_node(SUSP_TYPE_RRIP,
   SUSP_ENTRY_RRIP_TF, "TF", SUSP_LOC_ENTRY);
  cd9660node_rrip_tf(attr, node->node);
  TAILQ_INSERT_TAIL(&node->head, attr, rr_ll);



  if (TAILQ_EMPTY(&node->cn_children) &&
      node->node->inode != ((void*)0) &&
      S_ISLNK(node->node->inode->st.st_mode))
   cd9660_createSL(node);


  if (node->node->inode != ((void*)0) &&
      ((S_ISCHR(node->node->inode->st.st_mode) ||
       S_ISBLK(node->node->inode->st.st_mode)))) {
   attr =
       cd9660node_susp_create_node(SUSP_TYPE_RRIP,
    SUSP_ENTRY_RRIP_PN, "PN",
    SUSP_LOC_ENTRY);
   cd9660node_rrip_pn(attr, node->node);
   TAILQ_INSERT_TAIL(&node->head, attr, rr_ll);
  }
 }
}
