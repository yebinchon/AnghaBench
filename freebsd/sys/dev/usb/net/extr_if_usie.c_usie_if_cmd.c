
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usie_softc {int sc_if_ifnum; } ;
struct usie_hip {scalar_t__ param; int id; scalar_t__ len; } ;
struct usb_device_request {int wLength; int wIndex; int wValue; int bRequest; int bmRequestType; } ;
typedef int msg ;


 int DPRINTF (char*,int ) ;
 int UCDC_SEND_ENCAPSULATED_COMMAND ;
 int USETW (int ,int) ;
 int UT_WRITE_CLASS_INTERFACE ;
 int usie_do_request (struct usie_softc*,struct usb_device_request*,struct usie_hip*) ;

__attribute__((used)) static int
usie_if_cmd(struct usie_softc *sc, uint8_t cmd)
{
 struct usb_device_request req;
 struct usie_hip msg;

 msg.len = 0;
 msg.id = cmd;
 msg.param = 0;

 req.bmRequestType = UT_WRITE_CLASS_INTERFACE;
 req.bRequest = UCDC_SEND_ENCAPSULATED_COMMAND;
 USETW(req.wValue, 0);
 USETW(req.wIndex, sc->sc_if_ifnum);
 USETW(req.wLength, sizeof(msg));

 DPRINTF("cmd=%x\n", cmd);

 return (usie_do_request(sc, &req, &msg));
}
