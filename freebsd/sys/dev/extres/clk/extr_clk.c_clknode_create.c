
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sysctl_oid {int dummy; } ;
struct clknode_init_def {char* name; int flags; int parent_cnt; int id; int parent_names; } ;
struct clknode {int flags; char* name; int parent_cnt; int enable_cnt; int sysctl_ctx; int freq; int parent_idx; int * parent; struct clkdom* clkdom; int id; int parent_names; void* parents; void* softc; int children; int lock; } ;
struct clkdom {int clknode_list; } ;
typedef int kobj_t ;
typedef int kobj_class_t ;
typedef TYPE_1__* clknode_class_t ;
struct TYPE_3__ {int size; } ;


 int CLKNODE_IDX_NONE ;
 int CLKNODE_SYSCTL_CHILDREN_LIST ;
 int CLKNODE_SYSCTL_PARENT ;
 int CLKNODE_SYSCTL_PARENTS_LIST ;
 int CLK_NODE_LINKED ;
 int CLK_NODE_STATIC_STRINGS ;
 int CLK_TOPO_SLOCK () ;
 int CLK_TOPO_UNLOCK () ;
 int CTLFLAG_RD ;
 int CTLTYPE_STRING ;
 int KASSERT (int,char*) ;
 int M_CLOCK ;
 int M_WAITOK ;
 int M_ZERO ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (int *,int ,int ,char*,int,int *,int ,char*) ;
 struct sysctl_oid* SYSCTL_ADD_NODE (int *,int ,int ,char*,int,int ,char*) ;
 int SYSCTL_ADD_PROC (int *,int ,int ,char*,int,struct clknode*,int ,int ,char*,char*) ;
 int SYSCTL_ADD_U64 (int *,int ,int ,char*,int,int *,int ,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int SYSCTL_STATIC_CHILDREN (int ) ;
 int TAILQ_INIT (int *) ;
 int TAILQ_REMOVE (int *,struct clknode*,int ) ;
 int _hw_clock ;
 int clkdom_link ;
 int clklist_link ;
 struct clknode* clknode_find_by_name (char*) ;
 int clknode_list ;
 int clknode_sysctl ;
 int kobj_init (int ,int ) ;
 void* malloc (int,int ,int) ;
 int panic (char*,char*) ;
 char* strdup (char*,int ) ;
 int strdup_list (int ,int) ;
 int sx_init (int *,char*) ;
 int sysctl_ctx_init (int *) ;

struct clknode *
clknode_create(struct clkdom * clkdom, clknode_class_t clknode_class,
    const struct clknode_init_def *def)
{
 struct clknode *clknode;
 struct sysctl_oid *clknode_oid;
 bool replaced;

 KASSERT(def->name != ((void*)0), ("clock name is NULL"));
 KASSERT(def->name[0] != '\0', ("clock name is empty"));
 if (def->flags & CLK_NODE_LINKED) {
  KASSERT(def->parent_cnt == 0,
   ("Linked clock must not have parents"));
  KASSERT(clknode_class->size== 0,
   ("Linked clock cannot have own softc"));
 }


 CLK_TOPO_SLOCK();
 clknode = clknode_find_by_name(def->name);
 CLK_TOPO_UNLOCK();
  if (clknode != ((void*)0)) {
  if (!(clknode->flags & CLK_NODE_LINKED) &&
      def->flags & CLK_NODE_LINKED) {





   return (clknode);
  } else if (clknode->flags & CLK_NODE_LINKED &&
     !(def->flags & CLK_NODE_LINKED)) {
   KASSERT(clkdom != clknode->clkdom,
       ("linked clock must be from another "
       "domain that real one"));
   TAILQ_REMOVE(&clkdom->clknode_list, clknode,
       clkdom_link);
   TAILQ_REMOVE(&clknode_list, clknode, clklist_link);
   replaced = 1;
  } else if (clknode->flags & CLK_NODE_LINKED &&
     def->flags & CLK_NODE_LINKED) {




   return (clknode);
  } else {

   panic("Duplicated clock registration: %s\n", def->name);
  }
 } else {

  clknode = malloc(sizeof(struct clknode), M_CLOCK,
      M_WAITOK | M_ZERO);
  sx_init(&clknode->lock, "Clocknode lock");
  TAILQ_INIT(&clknode->children);
  replaced = 0;
 }

 kobj_init((kobj_t)clknode, (kobj_class_t)clknode_class);


 if (clknode_class->size > 0) {
  clknode->softc = malloc(clknode_class->size,
      M_CLOCK, M_WAITOK | M_ZERO);
 }


 clknode->parents = malloc(sizeof(struct clknode *) * def->parent_cnt,
     M_CLOCK, M_WAITOK | M_ZERO);


 if (def->flags & CLK_NODE_STATIC_STRINGS) {
  clknode->name = def->name;
  clknode->parent_names = def->parent_names;
 } else {
  clknode->name = strdup(def->name, M_CLOCK);
  clknode->parent_names =
      strdup_list(def->parent_names, def->parent_cnt);
 }


 clknode->id = def->id;
 clknode->clkdom = clkdom;
 clknode->flags = def->flags;
 clknode->parent_cnt = def->parent_cnt;
 clknode->parent = ((void*)0);
 clknode->parent_idx = CLKNODE_IDX_NONE;

 if (replaced)
   return (clknode);

 sysctl_ctx_init(&clknode->sysctl_ctx);
 clknode_oid = SYSCTL_ADD_NODE(&clknode->sysctl_ctx,
     SYSCTL_STATIC_CHILDREN(_hw_clock),
     OID_AUTO, clknode->name,
     CTLFLAG_RD, 0, "A clock node");

 SYSCTL_ADD_U64(&clknode->sysctl_ctx,
     SYSCTL_CHILDREN(clknode_oid),
     OID_AUTO, "frequency",
     CTLFLAG_RD, &clknode->freq, 0, "The clock frequency");
 SYSCTL_ADD_PROC(&clknode->sysctl_ctx,
     SYSCTL_CHILDREN(clknode_oid),
     OID_AUTO, "parent",
     CTLTYPE_STRING | CTLFLAG_RD,
     clknode, CLKNODE_SYSCTL_PARENT, clknode_sysctl,
     "A",
     "The clock parent");
 SYSCTL_ADD_PROC(&clknode->sysctl_ctx,
     SYSCTL_CHILDREN(clknode_oid),
     OID_AUTO, "parents",
     CTLTYPE_STRING | CTLFLAG_RD,
     clknode, CLKNODE_SYSCTL_PARENTS_LIST, clknode_sysctl,
     "A",
     "The clock parents list");
 SYSCTL_ADD_PROC(&clknode->sysctl_ctx,
     SYSCTL_CHILDREN(clknode_oid),
     OID_AUTO, "childrens",
     CTLTYPE_STRING | CTLFLAG_RD,
     clknode, CLKNODE_SYSCTL_CHILDREN_LIST, clknode_sysctl,
     "A",
     "The clock childrens list");
 SYSCTL_ADD_INT(&clknode->sysctl_ctx,
     SYSCTL_CHILDREN(clknode_oid),
     OID_AUTO, "enable_cnt",
     CTLFLAG_RD, &clknode->enable_cnt, 0, "The clock enable counter");

 return (clknode);
}
