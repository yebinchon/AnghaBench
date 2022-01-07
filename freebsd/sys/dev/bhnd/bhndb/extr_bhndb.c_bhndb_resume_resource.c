
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct bhndb_softc {int dummy; } ;
typedef int device_t ;


 scalar_t__ BHNDB_DEBUG (int ) ;
 int PRIO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int bhndb_try_activate_resource (struct bhndb_softc*,int ,int,int ,struct resource*,int *) ;
 struct bhndb_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int,int ,int ) ;
 int rman_get_device (struct resource*) ;
 int rman_get_flags (struct resource*) ;
 int rman_get_rid (struct resource*) ;
 int rman_get_size (struct resource*) ;
 int rman_get_start (struct resource*) ;

__attribute__((used)) static int
bhndb_resume_resource(device_t dev, device_t child, int type,
    struct resource *r)
{
 struct bhndb_softc *sc;

 sc = device_get_softc(dev);


 if (type != SYS_RES_MEMORY)
  return (0);


 if (!(rman_get_flags(r) & RF_ACTIVE))
  return (0);

 if (BHNDB_DEBUG(PRIO))
  device_printf(child, "resume resource type=%d 0x%jx+0x%jx\n",
      type, rman_get_start(r), rman_get_size(r));

 return (bhndb_try_activate_resource(sc, rman_get_device(r), type,
     rman_get_rid(r), r, ((void*)0)));
}
