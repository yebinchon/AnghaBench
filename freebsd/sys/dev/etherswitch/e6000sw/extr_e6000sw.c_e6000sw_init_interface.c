
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ** ifname; TYPE_2__** ifp; int dev; } ;
typedef TYPE_1__ e6000sw_softc_t ;
struct TYPE_7__ {int if_flags; TYPE_1__* if_softc; } ;


 int ENOMEM ;
 int IFF_BROADCAST ;
 int IFF_DRV_RUNNING ;
 int IFF_SIMPLEX ;
 int IFF_UP ;
 int IFNAMSIZ ;
 int IFT_ETHER ;
 int M_E6000SW ;
 int M_NOWAIT ;
 char* device_get_nameunit (int ) ;
 TYPE_2__* if_alloc (int ) ;
 int if_free (TYPE_2__*) ;
 int if_initname (TYPE_2__*,int *,int) ;
 int * malloc (scalar_t__,int ,int ) ;
 int memcpy (int *,char*,scalar_t__) ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
e6000sw_init_interface(e6000sw_softc_t *sc, int port)
{
 char name[IFNAMSIZ];

 snprintf(name, IFNAMSIZ, "%sport", device_get_nameunit(sc->dev));

 sc->ifp[port] = if_alloc(IFT_ETHER);
 if (sc->ifp[port] == ((void*)0))
  return (ENOMEM);
 sc->ifp[port]->if_softc = sc;
 sc->ifp[port]->if_flags |= IFF_UP | IFF_BROADCAST |
     IFF_DRV_RUNNING | IFF_SIMPLEX;
 sc->ifname[port] = malloc(strlen(name) + 1, M_E6000SW, M_NOWAIT);
 if (sc->ifname[port] == ((void*)0)) {
  if_free(sc->ifp[port]);
  return (ENOMEM);
 }
 memcpy(sc->ifname[port], name, strlen(name) + 1);
 if_initname(sc->ifp[port], sc->ifname[port], port);

 return (0);
}
