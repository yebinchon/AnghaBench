
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct puc_softc {int sc_nports; int sc_cfg_data; TYPE_1__* sc_bar; int sc_dev; struct puc_cfg* sc_cfg; } ;
struct puc_cfg {int rid; } ;
struct puc_bar {int b_res; } ;
typedef enum puc_cfg_cmd { ____Placeholder_puc_cfg_cmd } puc_cfg_cmd ;
struct TYPE_2__ {int b_rid; } ;


 int ENXIO ;





 int PUC_PCI_BARS ;
 intptr_t PUC_TYPE_SERIAL ;
 int bus_read_1 (int ,int) ;
 int bus_write_1 (int ,int,int) ;
 int device_printf (int ,char*,int) ;
 struct puc_bar* puc_get_bar (struct puc_softc*,int ) ;

__attribute__((used)) static int
puc_config_oxford_pcie(struct puc_softc *sc, enum puc_cfg_cmd cmd, int port,
    intptr_t *res)
{
 const struct puc_cfg *cfg = sc->sc_cfg;
 int idx;
 struct puc_bar *bar;
 uint8_t value;

 switch (cmd) {
 case 128:
  device_printf(sc->sc_dev, "%d UARTs detected\n",
   sc->sc_nports);


  bar = puc_get_bar(sc, cfg->rid);
  if (bar == ((void*)0))
   return (ENXIO);
  for (idx = 0; idx < sc->sc_nports; idx++) {
   value = bus_read_1(bar->b_res, 0x1000 + (idx << 9) +
       0x92);
   bus_write_1(bar->b_res, 0x1000 + (idx << 9) + 0x92,
       value | 0x10);
  }
  return (0);
 case 132:
  *res = 0x200;
  return (0);
 case 131:
  idx = 0;
  do {
   if (sc->sc_bar[idx++].b_rid != -1) {
    sc->sc_cfg_data = 16;
    *res = sc->sc_cfg_data;
    return (0);
   }
  } while (idx < PUC_PCI_BARS);

  bar = puc_get_bar(sc, cfg->rid);
  if (bar == ((void*)0))
   return (ENXIO);

  value = bus_read_1(bar->b_res, 0x04);
  if (value == 0)
   return (ENXIO);

  sc->sc_cfg_data = value;
  *res = sc->sc_cfg_data;
  return (0);
 case 130:
  *res = 0x1000 + (port << 9);
  return (0);
 case 129:
  *res = PUC_TYPE_SERIAL;
  return (0);
 default:
  break;
 }
 return (ENXIO);
}
