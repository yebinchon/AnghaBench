
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct atkbdc_device {int dummy; } ;
typedef int * device_t ;
struct TYPE_6__ {int * irq; } ;
typedef TYPE_1__ atkbdc_softc_t ;
struct TYPE_7__ {scalar_t__ rid; int resources; } ;
typedef TYPE_2__ atkbdc_device_t ;


 scalar_t__ KBDC_RID_KBD ;
 int M_ATKBDDEV ;
 int M_NOWAIT ;
 int M_ZERO ;
 int SYS_RES_IRQ ;
 int * device_add_child_ordered (int *,scalar_t__,char const*,int) ;
 int device_disable (int *) ;
 scalar_t__ device_get_softc (int *) ;
 int device_set_ivars (int *,TYPE_2__*) ;
 int free (TYPE_2__*,int ) ;
 TYPE_2__* malloc (int,int ,int) ;
 scalar_t__ resource_disabled (char const*,int) ;
 scalar_t__ resource_int_value (char const*,int,char*,int*) ;
 int resource_list_add (int *,int ,scalar_t__,int,int,int) ;
 int resource_list_init (int *) ;
 int rman_get_start (int *) ;

__attribute__((used)) static device_t
atkbdc_isa_add_child(device_t bus, u_int order, const char *name, int unit)
{
 atkbdc_device_t *ivar;
 atkbdc_softc_t *sc;
 device_t child;
 int t;

 sc = *(atkbdc_softc_t **)device_get_softc(bus);
 ivar = malloc(sizeof(struct atkbdc_device), M_ATKBDDEV,
  M_NOWAIT | M_ZERO);
 if (!ivar)
  return ((void*)0);

 child = device_add_child_ordered(bus, order, name, unit);
 if (child == ((void*)0)) {
  free(ivar, M_ATKBDDEV);
  return child;
 }

 resource_list_init(&ivar->resources);
 ivar->rid = order;







 if (order == KBDC_RID_KBD) {
  if (sc->irq == ((void*)0)) {
   if (resource_int_value(name, unit, "irq", &t) != 0)
    t = -1;
  } else
   t = rman_get_start(sc->irq);
  if (t > 0)
   resource_list_add(&ivar->resources, SYS_RES_IRQ,
       ivar->rid, t, t, 1);
 }

 if (resource_disabled(name, unit))
  device_disable(child);

 device_set_ivars(child, ivar);

 return child;
}
