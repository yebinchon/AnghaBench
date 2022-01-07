
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct sysctl_oid {int dummy; } ;
struct TYPE_4__ {int always_on; int boot_on; int enable_delay; int ramp_delay; int max_uamp; int min_uamp; int max_uvolt; int min_uvolt; } ;
struct regnode_init_def {char* name; int flags; char* parent_name; int ofw_node; TYPE_1__ std_param; int id; } ;
struct regnode {char* name; char* parent_name; int flags; int sysctl_ctx; TYPE_1__ std_param; int enable_cnt; int ofw_node; int * parent; int pdev; int id; int consumers_list; void* softc; int lock; } ;
typedef TYPE_2__* regnode_class_t ;
typedef int kobj_t ;
typedef int kobj_class_t ;
typedef int device_t ;
struct TYPE_5__ {int size; } ;


 int CTLFLAG_RD ;
 int CTLTYPE_INT ;
 int KASSERT (int,char*) ;
 int M_REGULATOR ;
 int M_WAITOK ;
 int M_ZERO ;
 int OID_AUTO ;
 int REGULATOR_FLAGS_STATIC ;
 int REG_TOPO_SLOCK () ;
 int REG_TOPO_UNLOCK () ;
 int SYSCTL_ADD_INT (int *,int ,int ,char*,int,int *,int ,char*) ;
 struct sysctl_oid* SYSCTL_ADD_NODE (int *,int ,int ,char*,int,int ,char*) ;
 int SYSCTL_ADD_PROC (int *,int ,int ,char*,int,struct regnode*,int ,int ,char*,char*) ;
 int SYSCTL_ADD_U8 (int *,int ,int ,char*,int,int *,int ,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int SYSCTL_STATIC_CHILDREN (int ) ;
 int TAILQ_INIT (int *) ;
 int _hw_regulator ;
 int kobj_init (int ,int ) ;
 void* malloc (int,int ,int) ;
 int panic (char*,char*) ;
 int * regnode_find_by_name (char*) ;
 int regnode_uvolt_sysctl ;
 void* strdup (char*,int ) ;
 int sx_init (int *,char*) ;
 int sysctl_ctx_init (int *) ;

struct regnode *
regnode_create(device_t pdev, regnode_class_t regnode_class,
    struct regnode_init_def *def)
{
 struct regnode *regnode;
 struct sysctl_oid *regnode_oid;

 KASSERT(def->name != ((void*)0), ("regulator name is NULL"));
 KASSERT(def->name[0] != '\0', ("regulator name is empty"));

 REG_TOPO_SLOCK();
 if (regnode_find_by_name(def->name) != ((void*)0))
  panic("Duplicated regulator registration: %s\n", def->name);
 REG_TOPO_UNLOCK();


 regnode = malloc(sizeof(struct regnode), M_REGULATOR,
     M_WAITOK | M_ZERO);
 kobj_init((kobj_t)regnode, (kobj_class_t)regnode_class);
 sx_init(&regnode->lock, "Regulator node lock");


 if (regnode_class->size > 0) {
  regnode->softc = malloc(regnode_class->size, M_REGULATOR,
      M_WAITOK | M_ZERO);
 }



 if (def->flags & REGULATOR_FLAGS_STATIC) {
  regnode->name = def->name;
  regnode->parent_name = def->parent_name;
 } else {
  regnode->name = strdup(def->name, M_REGULATOR);
  if (def->parent_name != ((void*)0))
   regnode->parent_name = strdup(def->parent_name,
       M_REGULATOR);
 }


 TAILQ_INIT(&regnode->consumers_list);
 regnode->id = def->id;
 regnode->pdev = pdev;
 regnode->flags = def->flags;
 regnode->parent = ((void*)0);
 regnode->std_param = def->std_param;




 sysctl_ctx_init(&regnode->sysctl_ctx);
 regnode_oid = SYSCTL_ADD_NODE(&regnode->sysctl_ctx,
     SYSCTL_STATIC_CHILDREN(_hw_regulator),
     OID_AUTO, regnode->name,
     CTLFLAG_RD, 0, "A regulator node");

 SYSCTL_ADD_INT(&regnode->sysctl_ctx,
     SYSCTL_CHILDREN(regnode_oid),
     OID_AUTO, "min_uvolt",
     CTLFLAG_RD, &regnode->std_param.min_uvolt, 0,
     "Minimal voltage (in uV)");
 SYSCTL_ADD_INT(&regnode->sysctl_ctx,
     SYSCTL_CHILDREN(regnode_oid),
     OID_AUTO, "max_uvolt",
     CTLFLAG_RD, &regnode->std_param.max_uvolt, 0,
     "Maximal voltage (in uV)");
 SYSCTL_ADD_INT(&regnode->sysctl_ctx,
     SYSCTL_CHILDREN(regnode_oid),
     OID_AUTO, "min_uamp",
     CTLFLAG_RD, &regnode->std_param.min_uamp, 0,
     "Minimal amperage (in uA)");
 SYSCTL_ADD_INT(&regnode->sysctl_ctx,
     SYSCTL_CHILDREN(regnode_oid),
     OID_AUTO, "max_uamp",
     CTLFLAG_RD, &regnode->std_param.max_uamp, 0,
     "Maximal amperage (in uA)");
 SYSCTL_ADD_INT(&regnode->sysctl_ctx,
     SYSCTL_CHILDREN(regnode_oid),
     OID_AUTO, "ramp_delay",
     CTLFLAG_RD, &regnode->std_param.ramp_delay, 0,
     "Ramp delay (in uV/us)");
 SYSCTL_ADD_INT(&regnode->sysctl_ctx,
     SYSCTL_CHILDREN(regnode_oid),
     OID_AUTO, "enable_delay",
     CTLFLAG_RD, &regnode->std_param.enable_delay, 0,
     "Enable delay (in us)");
 SYSCTL_ADD_INT(&regnode->sysctl_ctx,
     SYSCTL_CHILDREN(regnode_oid),
     OID_AUTO, "enable_cnt",
     CTLFLAG_RD, &regnode->enable_cnt, 0,
     "The regulator enable counter");
 SYSCTL_ADD_U8(&regnode->sysctl_ctx,
     SYSCTL_CHILDREN(regnode_oid),
     OID_AUTO, "boot_on",
     CTLFLAG_RD, (uint8_t *) &regnode->std_param.boot_on, 0,
     "Is enabled on boot");
 SYSCTL_ADD_U8(&regnode->sysctl_ctx,
     SYSCTL_CHILDREN(regnode_oid),
     OID_AUTO, "always_on",
     CTLFLAG_RD, (uint8_t *)&regnode->std_param.always_on, 0,
     "Is always enabled");

 SYSCTL_ADD_PROC(&regnode->sysctl_ctx,
     SYSCTL_CHILDREN(regnode_oid),
     OID_AUTO, "uvolt",
     CTLTYPE_INT | CTLFLAG_RD,
     regnode, 0, regnode_uvolt_sysctl,
     "I",
     "Current voltage (in uV)");

 return (regnode);
}
