
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct phynode_init_def {int ofw_node; int id; } ;
struct phynode {int ofw_node; int pdev; int id; int consumers_list; void* softc; int lock; } ;
typedef TYPE_1__* phynode_class_t ;
typedef int kobj_t ;
typedef int kobj_class_t ;
typedef int device_t ;
struct TYPE_3__ {int size; } ;


 int M_PHY ;
 int M_WAITOK ;
 int M_ZERO ;
 int TAILQ_INIT (int *) ;
 int kobj_init (int ,int ) ;
 void* malloc (int,int ,int) ;
 int sx_init (int *,char*) ;

struct phynode *
phynode_create(device_t pdev, phynode_class_t phynode_class,
    struct phynode_init_def *def)
{
 struct phynode *phynode;



 phynode = malloc(sizeof(struct phynode), M_PHY, M_WAITOK | M_ZERO);
 kobj_init((kobj_t)phynode, (kobj_class_t)phynode_class);
 sx_init(&phynode->lock, "Phy node lock");


 if (phynode_class->size > 0) {
  phynode->softc = malloc(phynode_class->size, M_PHY,
      M_WAITOK | M_ZERO);
 }


 TAILQ_INIT(&phynode->consumers_list);
 phynode->id = def->id;
 phynode->pdev = pdev;




 return (phynode);
}
