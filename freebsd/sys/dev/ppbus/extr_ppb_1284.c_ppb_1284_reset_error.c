
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppb_data {int state; int error; } ;
typedef int device_t ;


 struct ppb_data* DEVTOSOFTC (int ) ;
 int PPB_NO_ERROR ;

__attribute__((used)) static int
ppb_1284_reset_error(device_t bus, int state)
{
 struct ppb_data *ppb = DEVTOSOFTC(bus);

 ppb->error = PPB_NO_ERROR;
 ppb->state = state;

 return (0);
}
