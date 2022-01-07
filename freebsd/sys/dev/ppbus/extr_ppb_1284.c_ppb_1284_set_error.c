
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppb_data {int error; scalar_t__ state; } ;
typedef int device_t ;


 struct ppb_data* DEVTOSOFTC (int ) ;
 scalar_t__ PPB_ERROR ;
 int PPB_NO_ERROR ;
 int ppb_rstr (int ) ;
 int printf (char*,int,int,int) ;

__attribute__((used)) static int
ppb_1284_set_error(device_t bus, int error, int event)
{
 struct ppb_data *ppb = DEVTOSOFTC(bus);


 if ((ppb->error == PPB_NO_ERROR) &&
   (ppb->state != PPB_ERROR)) {
  ppb->error = error;
  ppb->state = PPB_ERROR;
 }






 return (0);
}
