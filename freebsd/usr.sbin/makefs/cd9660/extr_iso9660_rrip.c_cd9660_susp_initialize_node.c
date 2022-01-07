
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ISO_SUSP_ATTRIBUTES {int dummy; } ;
struct TYPE_6__ {scalar_t__ rootNode; } ;
typedef TYPE_1__ iso9660_disk ;
struct TYPE_7__ {int type; scalar_t__ parent; int head; } ;
typedef TYPE_2__ cd9660node ;


 int CD9660_TYPE_DOT ;
 int SUSP_ENTRY_SUSP_SP ;
 int SUSP_LOC_DOT ;
 int SUSP_TYPE_SUSP ;
 int TAILQ_INSERT_HEAD (int *,struct ISO_SUSP_ATTRIBUTES*,int ) ;
 int cd9660_susp_sp (struct ISO_SUSP_ATTRIBUTES*,TYPE_2__*) ;
 struct ISO_SUSP_ATTRIBUTES* cd9660node_susp_create_node (int ,int ,char*,int ) ;
 int rr_ll ;

int
cd9660_susp_initialize_node(iso9660_disk *diskStructure, cd9660node *node)
{
 struct ISO_SUSP_ATTRIBUTES *temp;
 if (node->type & CD9660_TYPE_DOT) {
  if (node->parent == diskStructure->rootNode) {
   temp = cd9660node_susp_create_node(SUSP_TYPE_SUSP,
    SUSP_ENTRY_SUSP_SP, "SP", SUSP_LOC_DOT);
   cd9660_susp_sp(temp, node);


   TAILQ_INSERT_HEAD(&node->head, temp, rr_ll);
  }
 }
 return 1;
}
