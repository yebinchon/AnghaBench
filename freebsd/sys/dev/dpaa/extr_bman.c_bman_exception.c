
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct bman_softc* t_Handle ;
struct bman_softc {int sc_dev; } ;
typedef int e_BmExceptions ;


 int device_printf (int ,char*,char const*) ;





__attribute__((used)) static void
bman_exception(t_Handle h_App, e_BmExceptions exception)
{
 struct bman_softc *sc;
 const char *message;

 sc = h_App;

 switch (exception) {
     case 130:
  message = "Invalid Command Verb";
  break;
 case 131:
  message = "FBPR pool exhaused. Consider increasing "
      "BMAN_MAX_BUFFERS";
  break;
 case 128:
  message = "Single bit ECC error";
  break;
 case 129:
  message = "Multi bit ECC error";
  break;
 default:
  message = "Unknown error";
 }

 device_printf(sc->sc_dev, "BMAN Exception: %s.\n", message);
}
