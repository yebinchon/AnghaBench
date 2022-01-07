
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {int dev; } ;
typedef TYPE_1__* POCE_SOFTC ;


 int DELAY (int) ;
 int EIO ;
 int IS_XE201 (TYPE_1__*) ;
 scalar_t__ OCE_READ_REG32 (TYPE_1__*,int ,int ) ;
 scalar_t__ SLIPORT_READY_TIMEOUT ;
 scalar_t__ SLIPORT_STATUS_ERR_MASK ;
 int SLIPORT_STATUS_OFFSET ;
 scalar_t__ SLIPORT_STATUS_RDY_MASK ;
 scalar_t__ SLIPORT_STATUS_RN_MASK ;
 int db ;
 int device_printf (int ,char*) ;

int
oce_wait_ready(POCE_SOFTC sc)
{

 uint32_t sliport_status, i;

 if (!IS_XE201(sc))
  return (-1);

 for (i = 0; i < 30000; i++) {
  sliport_status = OCE_READ_REG32(sc, db, SLIPORT_STATUS_OFFSET);
  if (sliport_status & SLIPORT_STATUS_RDY_MASK)
   return 0;

  if (sliport_status & SLIPORT_STATUS_ERR_MASK &&
   !(sliport_status & SLIPORT_STATUS_RN_MASK)) {
   device_printf(sc->dev, "Error detected in the card\n");
   return EIO;
  }

  DELAY(1000);
 }

 device_printf(sc->dev, "Firmware wait timed out\n");

 return (-1);
}
