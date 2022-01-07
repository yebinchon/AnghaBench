
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppb_data {scalar_t__ state; scalar_t__ error; int class_id; } ;
typedef int device_t ;


 int PPB_COMPATIBLE ;
 int PPB_ECP ;
 int PPB_EPP ;
 scalar_t__ PPB_ERROR ;
 int PPB_EXTENSIBILITY_LINK ;
 int PPB_NIBBLE ;
 scalar_t__ PPB_NOT_IEEE1284 ;
 int PPB_PS2 ;
 int PPB_REQUEST_ID ;
 int PPB_USE_RLE ;
 scalar_t__ bootverbose ;
 scalar_t__ device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int ppb_1284_negociate (int ,int ,int) ;
 int ppb_1284_terminate (int ) ;
 int ppb_pnp_detect (int ) ;
 int printf (char*) ;

__attribute__((used)) static int
ppb_scan_bus(device_t bus)
{
 struct ppb_data * ppb = (struct ppb_data *)device_get_softc(bus);
 int error = 0;







 error = ppb_1284_negociate(bus, PPB_NIBBLE, PPB_REQUEST_ID);

 if ((ppb->state == PPB_ERROR) && (ppb->error == PPB_NOT_IEEE1284))
  goto end_scan;

 ppb_1284_terminate(bus);

 device_printf(bus, "IEEE1284 device found ");

 if (!(error = ppb_1284_negociate(bus, PPB_NIBBLE, 0))) {
  printf("/NIBBLE");
  ppb_1284_terminate(bus);
 }

 if (!(error = ppb_1284_negociate(bus, PPB_PS2, 0))) {
  printf("/PS2");
  ppb_1284_terminate(bus);
 }

 if (!(error = ppb_1284_negociate(bus, PPB_ECP, 0))) {
  printf("/ECP");
  ppb_1284_terminate(bus);
 }

 if (!(error = ppb_1284_negociate(bus, PPB_ECP, PPB_USE_RLE))) {
  printf("/ECP_RLE");
  ppb_1284_terminate(bus);
 }

 if (!(error = ppb_1284_negociate(bus, PPB_EPP, 0))) {
  printf("/EPP");
  ppb_1284_terminate(bus);
 }


 if (bootverbose) {
  if (!(error = ppb_1284_negociate(bus, PPB_NIBBLE,
    PPB_REQUEST_ID))) {
   printf("/NIBBLE_ID");
   ppb_1284_terminate(bus);
  }

  if (!(error = ppb_1284_negociate(bus, PPB_PS2,
    PPB_REQUEST_ID))) {
   printf("/PS2_ID");
   ppb_1284_terminate(bus);
  }

  if (!(error = ppb_1284_negociate(bus, PPB_ECP,
    PPB_REQUEST_ID))) {
   printf("/ECP_ID");
   ppb_1284_terminate(bus);
  }

  if (!(error = ppb_1284_negociate(bus, PPB_ECP,
    PPB_REQUEST_ID | PPB_USE_RLE))) {
   printf("/ECP_RLE_ID");
   ppb_1284_terminate(bus);
  }

  if (!(error = ppb_1284_negociate(bus, PPB_COMPATIBLE,
    PPB_EXTENSIBILITY_LINK))) {
   printf("/Extensibility Link");
   ppb_1284_terminate(bus);
  }
 }

 printf("\n");


 ppb->class_id = ppb_pnp_detect(bus);

 return (0);

end_scan:
 return (error);
}
