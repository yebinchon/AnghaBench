
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwmc_softc {int cdev; int dev; } ;


 scalar_t__ OF_getprop_alloc (int ,char*,void**) ;
 int OF_prop_free (void*) ;
 int device_get_name (int ) ;
 int device_get_unit (int ) ;
 int make_dev_alias (int ,char*,char const*) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ resource_string_value (int ,int ,char*,char const**) ;

__attribute__((used)) static void
pwmc_setup_label(struct pwmc_softc *sc)
{
 const char *hintlabel;
 if (resource_string_value(device_get_name(sc->dev),
     device_get_unit(sc->dev), "label", &hintlabel) == 0) {
  make_dev_alias(sc->cdev, "pwm/%s", hintlabel);
 }
}
