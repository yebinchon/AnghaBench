
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct proto_softc {scalar_t__ sc_rescnt; struct proto_res* sc_res; } ;
struct TYPE_2__ {struct resource* res; } ;
struct proto_res {int r_type; int r_rid; TYPE_1__ r_d; } ;


 int EINVAL ;
 int ENOSPC ;
 scalar_t__ PROTO_RES_MAX ;
 int PROTO_RES_UNUSED ;

int
proto_add_resource(struct proto_softc *sc, int type, int rid,
    struct resource *res)
{
 struct proto_res *r;

 if (type == PROTO_RES_UNUSED)
  return (EINVAL);
 if (sc->sc_rescnt == PROTO_RES_MAX)
  return (ENOSPC);

 r = sc->sc_res + sc->sc_rescnt++;
 r->r_type = type;
 r->r_rid = rid;
 r->r_d.res = res;
 return (0);
}
