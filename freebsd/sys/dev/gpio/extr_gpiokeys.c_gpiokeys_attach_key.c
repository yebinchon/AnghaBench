
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct gpiokeys_softc {int sc_dev; } ;
struct gpiokey {int repeat_delay; int repeat; int debounce_interval; scalar_t__ keycode; int autorepeat; int * irq_res; int * pin; int irq_rid; int intr_hl; int mtx; int repeat_callout; int debounce_callout; struct gpiokeys_softc* parent_sc; } ;
typedef int prop ;
typedef int phandle_t ;
typedef int pcell_t ;


 int AUTOREPEAT_DELAY ;
 int AUTOREPEAT_REPEAT ;
 int GPIOKEY_LOCK_INIT (struct gpiokey*) ;
 scalar_t__ GPIOKEY_NONE ;
 int GPIO_INTR_EDGE_BOTH ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 scalar_t__ OF_getprop (int ,char*,int *,int) ;
 int OF_getprop_alloc (int ,char*,void**) ;
 int OF_hasprop (int ,char*) ;
 int OF_prop_free (char*) ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 scalar_t__ bootverbose ;
 int bus_release_resource (int ,int ,int ,int *) ;
 scalar_t__ bus_setup_intr (int ,int *,int,int *,int ,struct gpiokey*,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_printf (int ,char*,char const*,...) ;
 void* fdt32_to_cpu (int ) ;
 int * gpio_alloc_intr_resource (int ,int *,int ,int *,int ) ;
 int gpio_pin_get_by_ofw_idx (int ,int ,int ,int **) ;
 int gpio_pin_release (int *) ;
 int gpiokey_intr ;
 scalar_t__ gpiokey_map_linux_code (void*) ;
 int hz ;

__attribute__((used)) static void
gpiokeys_attach_key(struct gpiokeys_softc *sc, phandle_t node,
    struct gpiokey *key)
{
 pcell_t prop;
 char *name;
 uint32_t code;
 int err;
 const char *key_name;

 GPIOKEY_LOCK_INIT(key);
 key->parent_sc = sc;
 callout_init_mtx(&key->debounce_callout, &key->mtx, 0);
 callout_init_mtx(&key->repeat_callout, &key->mtx, 0);

 name = ((void*)0);
 if (OF_getprop_alloc(node, "label", (void **)&name) == -1)
  OF_getprop_alloc(node, "name", (void **)&name);

 if (name != ((void*)0))
  key_name = name;
 else
  key_name = "unknown";

 key->autorepeat = OF_hasprop(node, "autorepeat");

 key->repeat_delay = (hz * AUTOREPEAT_DELAY) / 1000;
 if (key->repeat_delay == 0)
  key->repeat_delay = 1;

 key->repeat = (hz * AUTOREPEAT_REPEAT) / 1000;
 if (key->repeat == 0)
  key->repeat = 1;

 if ((OF_getprop(node, "debounce-interval", &prop, sizeof(prop))) > 0)
  key->debounce_interval = fdt32_to_cpu(prop);
 else
  key->debounce_interval = 5;

 if ((OF_getprop(node, "freebsd,code", &prop, sizeof(prop))) > 0)
  key->keycode = fdt32_to_cpu(prop);
 else if ((OF_getprop(node, "linux,code", &prop, sizeof(prop))) > 0) {
  code = fdt32_to_cpu(prop);
  key->keycode = gpiokey_map_linux_code(code);
  if (key->keycode == GPIOKEY_NONE)
   device_printf(sc->sc_dev, "<%s> failed to map linux,code value 0x%x\n",
       key_name, code);
 }
 else
  device_printf(sc->sc_dev, "<%s> no linux,code or freebsd,code property\n",
      key_name);

 err = gpio_pin_get_by_ofw_idx(sc->sc_dev, node, 0, &key->pin);
 if (err) {
  device_printf(sc->sc_dev, "<%s> failed to map pin\n", key_name);
  if (name)
   OF_prop_free(name);
  return;
 }

 key->irq_res = gpio_alloc_intr_resource(sc->sc_dev, &key->irq_rid,
     RF_ACTIVE, key->pin, GPIO_INTR_EDGE_BOTH);
 if (!key->irq_res) {
  device_printf(sc->sc_dev, "<%s> cannot allocate interrupt\n", key_name);
  gpio_pin_release(key->pin);
  key->pin = ((void*)0);
  if (name)
   OF_prop_free(name);
  return;
 }

 if (bus_setup_intr(sc->sc_dev, key->irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
   ((void*)0), gpiokey_intr, key,
   &key->intr_hl) != 0) {
  device_printf(sc->sc_dev, "<%s> unable to setup the irq handler\n", key_name);
  bus_release_resource(sc->sc_dev, SYS_RES_IRQ, key->irq_rid,
      key->irq_res);
  gpio_pin_release(key->pin);
  key->pin = ((void*)0);
  key->irq_res = ((void*)0);
  if (name)
   OF_prop_free(name);
  return;
 }

 if (bootverbose)
  device_printf(sc->sc_dev, "<%s> code=%08x, autorepeat=%d, " "repeat=%d, repeat_delay=%d\n", key_name, key->keycode,

      key->autorepeat, key->repeat, key->repeat_delay);

 if (name)
  OF_prop_free(name);
}
