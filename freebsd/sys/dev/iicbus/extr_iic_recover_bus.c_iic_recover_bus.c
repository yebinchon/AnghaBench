
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct iicrb_pin_access {int ctx; int (* setsda ) (int ,int) ;int (* setscl ) (int ,int) ;scalar_t__ (* getsda ) (int ) ;scalar_t__ (* getscl ) (int ) ;} ;


 int DELAY (int const) ;
 int IIC_EBUSERR ;
 int stub1 (int ,int) ;
 int stub2 (int ,int) ;
 scalar_t__ stub3 (int ) ;
 scalar_t__ stub4 (int ) ;
 int stub5 (int ,int) ;
 int stub6 (int ,int) ;
 int stub7 (int ,int) ;
 int stub8 (int ,int) ;

int
iic_recover_bus(struct iicrb_pin_access *pins)
{
 const u_int timeout_us = 40000;
 const u_int delay_us = 500;
 int i;




 pins->setsda(pins->ctx, 1);
 pins->setscl(pins->ctx, 1);
 for (i = 0; i < timeout_us; i += delay_us) {
  if (pins->getscl(pins->ctx))
   break;
  DELAY(delay_us);
 }
 if (i >= timeout_us)
  return (IIC_EBUSERR);
 for (i = 0; ; ++i) {
  if (pins->getsda(pins->ctx))
   break;
  if (i == 9)
   return (IIC_EBUSERR);
  pins->setscl(pins->ctx, 0);
  DELAY(5);
  pins->setscl(pins->ctx, 1);
  DELAY(5);
 }
 pins->setsda(pins->ctx, 0);
 DELAY(5);
 pins->setsda(pins->ctx, 1);
 DELAY(5);

 return (0);
}
