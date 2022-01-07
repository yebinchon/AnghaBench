
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct ISO_SUSP_ATTRIBUTES {int dummy; } ;
struct TYPE_17__ {scalar_t__ rootNode; TYPE_3__* rr_moved_dir; } ;
typedef TYPE_2__ iso9660_disk ;
struct TYPE_18__ {int type; scalar_t__ parent; int head; int * rr_real_parent; int * rr_relocated; TYPE_1__* isoDirRecord; TYPE_4__* node; } ;
typedef TYPE_3__ cd9660node ;
struct TYPE_19__ {int name; int * inode; } ;
struct TYPE_16__ {scalar_t__* name_len; int name; } ;


 int CD9660_TYPE_DOT ;
 int CD9660_TYPE_DOTDOT ;
 int RRIP_DEFAULT_MOVE_DIR_NAME ;
 int SUSP_ENTRY_RRIP_CL ;
 int SUSP_ENTRY_RRIP_PL ;
 int SUSP_ENTRY_RRIP_PX ;
 int SUSP_ENTRY_RRIP_RE ;
 int SUSP_LOC_DOTDOT ;
 int SUSP_LOC_ENTRY ;
 int SUSP_RRIP_ER_EXT_DES ;
 int SUSP_RRIP_ER_EXT_ID ;
 int SUSP_RRIP_ER_EXT_SRC ;
 int SUSP_TYPE_RRIP ;
 int TAILQ_INSERT_TAIL (int *,struct ISO_SUSP_ATTRIBUTES*,int ) ;
 int assert (int ) ;
 int cd9660_rrip_CL (struct ISO_SUSP_ATTRIBUTES*,TYPE_3__*) ;
 int cd9660_rrip_NM (TYPE_3__*) ;
 int cd9660_rrip_PL (struct ISO_SUSP_ATTRIBUTES*,TYPE_3__*) ;
 int cd9660_rrip_RE (struct ISO_SUSP_ATTRIBUTES*,TYPE_3__*) ;
 int cd9660_rrip_add_NM (TYPE_3__*,int ) ;
 int cd9660_rrip_initialize_inode (TYPE_3__*) ;
 int cd9660_susp_ER (TYPE_3__*,int,int ,int ,int ) ;
 int cd9660node_rrip_px (struct ISO_SUSP_ATTRIBUTES*,TYPE_4__*) ;
 struct ISO_SUSP_ATTRIBUTES* cd9660node_susp_create_node (int ,int ,char*,int ) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 int rr_ll ;
 scalar_t__ strlen (int ) ;

int
cd9660_rrip_initialize_node(iso9660_disk *diskStructure, cd9660node *node,
    cd9660node *parent, cd9660node *grandparent)
{
 struct ISO_SUSP_ATTRIBUTES *current = ((void*)0);

 assert(node != ((void*)0));

 if (node->type & CD9660_TYPE_DOT) {




  if (node->parent == diskStructure->rootNode) {
   cd9660_susp_ER(node, 1, SUSP_RRIP_ER_EXT_ID,
    SUSP_RRIP_ER_EXT_DES, SUSP_RRIP_ER_EXT_SRC);
  }
  if (parent != ((void*)0) && parent->node != ((void*)0) &&
      parent->node->inode != ((void*)0)) {

   current = cd9660node_susp_create_node(SUSP_TYPE_RRIP,
    SUSP_ENTRY_RRIP_PX, "PX", SUSP_LOC_ENTRY);
   cd9660node_rrip_px(current, parent->node);
   TAILQ_INSERT_TAIL(&node->head, current, rr_ll);
  }
 } else if (node->type & CD9660_TYPE_DOTDOT) {
  if (grandparent != ((void*)0) && grandparent->node != ((void*)0) &&
      grandparent->node->inode != ((void*)0)) {

   current = cd9660node_susp_create_node(SUSP_TYPE_RRIP,
    SUSP_ENTRY_RRIP_PX, "PX", SUSP_LOC_ENTRY);
   cd9660node_rrip_px(current, grandparent->node);
   TAILQ_INSERT_TAIL(&node->head, current, rr_ll);
  }

  if (parent != ((void*)0) && parent->rr_real_parent != ((void*)0)) {
   current = cd9660node_susp_create_node(SUSP_TYPE_RRIP,
       SUSP_ENTRY_RRIP_PL, "PL", SUSP_LOC_DOTDOT);
   cd9660_rrip_PL(current,node);
   TAILQ_INSERT_TAIL(&node->head, current, rr_ll);
  }
 } else {
  cd9660_rrip_initialize_inode(node);
  if (node == diskStructure->rr_moved_dir) {
   cd9660_rrip_add_NM(node, RRIP_DEFAULT_MOVE_DIR_NAME);
  }
  else if ((node->node != ((void*)0)) &&
   ((strlen(node->node->name) !=
       (uint8_t)node->isoDirRecord->name_len[0]) ||
   (memcmp(node->node->name,node->isoDirRecord->name,
    (uint8_t)node->isoDirRecord->name_len[0]) != 0))) {
   cd9660_rrip_NM(node);
  }






  if (node->rr_relocated != ((void*)0)) {
   current = cd9660node_susp_create_node(SUSP_TYPE_RRIP,
    SUSP_ENTRY_RRIP_CL, "CL", SUSP_LOC_ENTRY);
   cd9660_rrip_CL(current, node);
   TAILQ_INSERT_TAIL(&node->head, current, rr_ll);
  }


  if (node->rr_real_parent != ((void*)0)) {
   current = cd9660node_susp_create_node(SUSP_TYPE_RRIP,
    SUSP_ENTRY_RRIP_RE, "RE", SUSP_LOC_ENTRY);
   cd9660_rrip_RE(current,node);
   TAILQ_INSERT_TAIL(&node->head, current, rr_ll);
  }
 }
 return 1;
}
