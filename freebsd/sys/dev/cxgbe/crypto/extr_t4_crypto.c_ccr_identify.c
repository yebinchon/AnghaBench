
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int cryptocaps; } ;
typedef int driver_t ;
typedef int device_t ;


 int FW_CAPS_CONFIG_CRYPTO_LOOKASIDE ;
 int device_add_child (int ,char*,int) ;
 int * device_find_child (int ,char*,int) ;
 struct adapter* device_get_softc (int ) ;

__attribute__((used)) static void
ccr_identify(driver_t *driver, device_t parent)
{
 struct adapter *sc;

 sc = device_get_softc(parent);
 if (sc->cryptocaps & FW_CAPS_CONFIG_CRYPTO_LOOKASIDE &&
     device_find_child(parent, "ccr", -1) == ((void*)0))
  device_add_child(parent, "ccr", -1);
}
