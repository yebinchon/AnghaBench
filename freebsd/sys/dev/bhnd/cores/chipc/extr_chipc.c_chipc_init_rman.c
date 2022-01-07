
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_2__ {char* rm_descr; int rm_type; int rm_end; scalar_t__ rm_start; } ;
struct chipc_softc {int dev; TYPE_1__ mem_rman; } ;
typedef int bhnd_port_type ;


 int BHND_PORT_DEVICE ;
 int BUS_SPACE_MAXADDR ;
 int RMAN_ARRAY ;
 size_t bhnd_get_port_count (int ,int ) ;
 int bhnd_port_type_name (int ) ;
 int chipc_free_rman (struct chipc_softc*) ;
 int chipc_rman_init_regions (struct chipc_softc*,int ,size_t) ;
 int device_printf (int ,char*,int,...) ;
 size_t nitems (int *) ;
 int rman_init (TYPE_1__*) ;

__attribute__((used)) static int
chipc_init_rman(struct chipc_softc *sc)
{
 u_int num_ports;
 int error;


 bhnd_port_type types[] = {
     BHND_PORT_DEVICE
 };


 sc->mem_rman.rm_start = 0;
 sc->mem_rman.rm_end = BUS_SPACE_MAXADDR;
 sc->mem_rman.rm_type = RMAN_ARRAY;
 sc->mem_rman.rm_descr = "ChipCommon Device Memory";
 if ((error = rman_init(&sc->mem_rman))) {
  device_printf(sc->dev, "could not initialize mem_rman: %d\n",
      error);
  return (error);
 }


 for (u_int i = 0; i < nitems(types); i++) {
  num_ports = bhnd_get_port_count(sc->dev, types[i]);
  for (u_int port = 0; port < num_ports; port++) {
   error = chipc_rman_init_regions(sc, types[i], port);
   if (error) {
    device_printf(sc->dev,
        "region init failed for %s%u: %d\n",
         bhnd_port_type_name(types[i]), port,
         error);

    goto failed;
   }
  }
 }

 return (0);

failed:
 chipc_free_rman(sc);
 return (error);
}
