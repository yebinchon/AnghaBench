
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int device_t ;


 int PPB_DONTWAIT ;
 int device_get_parent (int ) ;
 int device_printf (int ,char*,int) ;
 int lpt_port_test (int ,int,int) ;
 int lpt_release_ppbus (int ) ;
 int lpt_request_ppbus (int ,int ) ;
 int ppb_lock (int ) ;
 int ppb_unlock (int ) ;
 int ppb_wctr (int ,int ) ;
 int ppb_wdtr (int ,int ) ;

__attribute__((used)) static int
lpt_detect(device_t dev)
{
 device_t ppbus = device_get_parent(dev);

 static u_char testbyte[18] = {
  0x55,
  0xaa,
  0xfe, 0xfd, 0xfb, 0xf7,
  0xef, 0xdf, 0xbf, 0x7f,
  0x01, 0x02, 0x04, 0x08,
  0x10, 0x20, 0x40, 0x80
 };
 int i, error, status;

 status = 1;

 ppb_lock(ppbus);
 if ((error = lpt_request_ppbus(dev, PPB_DONTWAIT))) {
  ppb_unlock(ppbus);
  device_printf(dev, "cannot alloc ppbus (%d)!\n", error);
  return (0);
 }

 for (i = 0; i < 18 && status; i++)
  if (!lpt_port_test(ppbus, testbyte[i], 0xff)) {
   status = 0;
   break;
  }


 ppb_wdtr(ppbus, 0);
 ppb_wctr(ppbus, 0);

 lpt_release_ppbus(dev);
 ppb_unlock(ppbus);

 return (status);
}
