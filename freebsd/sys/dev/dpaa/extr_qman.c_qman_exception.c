
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct qman_softc* t_Handle ;
struct qman_softc {int sc_dev; } ;
typedef int e_QmExceptions ;


 int device_printf (int ,char*,char const*) ;
__attribute__((used)) static void
qman_exception(t_Handle app, e_QmExceptions exception)
{
 struct qman_softc *sc;
 const char *message;

 sc = app;

 switch (exception) {
 case 143:
  message = "Initiator Data Error";
  break;
 case 141:
  message = "CoreNet Target Data Error";
  break;
 case 142:
  message = "Invalid Target Transaction";
  break;
 case 129:
  message = "PFDR Low Watermark Interrupt";
  break;
 case 130:
  message = "PFDR Enqueues Blocked Interrupt";
  break;
 case 128:
  message = "Single Bit ECC Error Interrupt";
  break;
 case 131:
  message = "Multi Bit ECC Error Interrupt";
  break;
 case 132:
  message = "Invalid Command Verb Interrupt";
  break;
 case 140:
  message = "Invalid Dequeue Direct Connect Portal Interrupt";
  break;
 case 139:
  message = "Invalid Dequeue FQ Interrupt";
  break;
 case 137:
  message = "Invalid Dequeue Source Interrupt";
  break;
 case 138:
  message = "Invalid Dequeue Queue Interrupt";
  break;
 case 135:
  message = "Invalid Enqueue Overflow Interrupt";
  break;
 case 133:
  message = "Invalid Enqueue State Interrupt";
  break;
 case 136:
  message = "Invalid Enqueue Channel Interrupt";
  break;
 case 134:
  message = "Invalid Enqueue Queue Interrupt";
  break;
 case 144:
  message = "CG change state notification";
  break;
 default:
  message = "Unknown error";
 }

 device_printf(sc->sc_dev, "QMan Exception: %s.\n", message);
}
