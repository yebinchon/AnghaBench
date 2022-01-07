
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct iflib_cloneattach_ctx {char const* cc_name; int cc_params; scalar_t__ cc_len; struct if_clone* cc_ifc; } ;
struct if_clone {int dummy; } ;
typedef TYPE_1__* if_pseudo_t ;
typedef int if_ctx_t ;
typedef int * device_t ;
typedef int caddr_t ;
struct TYPE_3__ {int ip_sctx; int ip_dc; } ;


 int EBUSY ;
 int ENOENT ;
 int Giant ;
 int MPASS (int) ;
 int PSEUDO_LOCK () ;
 int PSEUDO_UNLOCK () ;
 scalar_t__ __predict_false (int ) ;
 int bus_generic_print_child (int *,int *) ;
 int * devclass_get_device (int ,int) ;
 void* device_add_child (int *,char const*,int) ;
 int device_attach (int *) ;
 int device_delete_child (int *,int *) ;
 int device_quiet (int *) ;
 int device_set_driver (int *,int *) ;
 int device_set_softc (int *,int ) ;
 char* ifc_name (struct if_clone*) ;
 TYPE_1__* iflib_ip_lookup (char const*) ;
 int iflib_pseudo_register (int *,int ,int *,struct iflib_cloneattach_ctx*) ;
 int * iflib_pseudodev ;
 int iflib_pseudodriver ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,...) ;
 int * root_bus ;

__attribute__((used)) static int
iflib_clone_create(struct if_clone *ifc, int unit, caddr_t params)
{
 const char *name = ifc_name(ifc);
 struct iflib_cloneattach_ctx clctx;
 if_ctx_t ctx;
 if_pseudo_t ip;
 device_t dev;
 int rc;

 clctx.cc_ifc = ifc;
 clctx.cc_len = 0;
 clctx.cc_params = params;
 clctx.cc_name = name;

 if (__predict_false(iflib_pseudodev == ((void*)0))) {

  mtx_lock(&Giant);
  iflib_pseudodev = device_add_child(root_bus, "ifpseudo", 0);
  mtx_unlock(&Giant);
  MPASS(iflib_pseudodev != ((void*)0));
 }
 ip = iflib_ip_lookup(name);
 if (ip == ((void*)0)) {
  printf("no ip found for %s\n", name);
  return (ENOENT);
 }
 if ((dev = devclass_get_device(ip->ip_dc, unit)) != ((void*)0)) {
  printf("unit %d allocated\n", unit);
  bus_generic_print_child(iflib_pseudodev, dev);
  return (EBUSY);
 }
 PSEUDO_LOCK();
 dev = device_add_child(iflib_pseudodev, name, unit);
 device_set_driver(dev, &iflib_pseudodriver);
 PSEUDO_UNLOCK();
 device_quiet(dev);
 rc = device_attach(dev);
 MPASS(rc == 0);
 MPASS(dev != ((void*)0));
 MPASS(devclass_get_device(ip->ip_dc, unit) == dev);
 rc = iflib_pseudo_register(dev, ip->ip_sctx, &ctx, &clctx);
 if (rc) {
  mtx_lock(&Giant);
  device_delete_child(iflib_pseudodev, dev);
  mtx_unlock(&Giant);
 } else
  device_set_softc(dev, ctx);

 return (rc);
}
