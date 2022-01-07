
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {void* kb_data; } ;
struct gpiokeys_softc {size_t sc_total_keys; int * sc_keys; int sc_fkeymap; int sc_accmap; int sc_keymap; int sc_mode; TYPE_1__ sc_kbd; int sc_dev; } ;
struct gpiokey {int dummy; } ;
typedef int phandle_t ;
typedef TYPE_1__ keyboard_t ;
typedef int device_t ;


 int ENXIO ;
 int GPIOKEYS_GLOBAL_NFKEY ;
 int GPIOKEYS_LOCK_INIT (struct gpiokeys_softc*) ;
 int KBD_CONFIG_DONE (TYPE_1__*) ;
 int KBD_DRIVER_NAME ;
 int KBD_FOUND_DEVICE (TYPE_1__*) ;
 int KBD_INIT_DONE (TYPE_1__*) ;
 int KBD_PROBE_DONE (TYPE_1__*) ;
 int KB_OTHER ;
 int K_XLATE ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int OF_child (int) ;
 int OF_hasprop (int,char*) ;
 int OF_peer (int) ;
 int accent_map ;
 scalar_t__ bootverbose ;
 struct gpiokeys_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int genkbd_diag (TYPE_1__*,int) ;
 int gpiokeys_attach_key (struct gpiokeys_softc*,int,int *) ;
 int gpiokeys_clear_state (TYPE_1__*) ;
 int gpiokeys_detach (int ) ;
 int gpiokeys_enable (TYPE_1__*) ;
 scalar_t__ kbd_attach (TYPE_1__*) ;
 int kbd_init_struct (TYPE_1__*,int ,int ,int,int ,int ,int ) ;
 scalar_t__ kbd_register (TYPE_1__*) ;
 int kbd_set_maps (TYPE_1__*,int *,int *,int ,int ) ;
 int key_map ;
 int * malloc (int,int ,int) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
gpiokeys_attach(device_t dev)
{
 int unit;
 struct gpiokeys_softc *sc;
 keyboard_t *kbd;
 phandle_t keys, child;
 int total_keys;

 if ((keys = ofw_bus_get_node(dev)) == -1)
  return (ENXIO);

 sc = device_get_softc(dev);
 sc->sc_dev = dev;
 kbd = &sc->sc_kbd;

 GPIOKEYS_LOCK_INIT(sc);
 unit = device_get_unit(dev);
 kbd_init_struct(kbd, KBD_DRIVER_NAME, KB_OTHER, unit, 0, 0, 0);

 kbd->kb_data = (void *)sc;
 sc->sc_mode = K_XLATE;

 sc->sc_keymap = key_map;
 sc->sc_accmap = accent_map;

 kbd_set_maps(kbd, &sc->sc_keymap, &sc->sc_accmap,
     sc->sc_fkeymap, GPIOKEYS_GLOBAL_NFKEY);

 KBD_FOUND_DEVICE(kbd);

 gpiokeys_clear_state(kbd);

 KBD_PROBE_DONE(kbd);

 KBD_INIT_DONE(kbd);

 if (kbd_register(kbd) < 0) {
  goto detach;
 }

 KBD_CONFIG_DONE(kbd);

 gpiokeys_enable(kbd);







 if (bootverbose) {
  genkbd_diag(kbd, 1);
 }

 total_keys = 0;


 for (child = OF_child(keys); child != 0; child = OF_peer(child)) {
  if (!OF_hasprop(child, "gpios"))
   continue;
  total_keys++;
 }

 if (total_keys) {
  sc->sc_keys = malloc(sizeof(struct gpiokey) * total_keys,
      M_DEVBUF, M_WAITOK | M_ZERO);

  sc->sc_total_keys = 0;

  for (child = OF_child(keys); child != 0; child = OF_peer(child)) {
   if (!OF_hasprop(child, "gpios"))
    continue;
   gpiokeys_attach_key(sc, child ,&sc->sc_keys[sc->sc_total_keys]);
   sc->sc_total_keys++;
  }
 }

 return (0);

detach:
 gpiokeys_detach(dev);
 return (ENXIO);
}
