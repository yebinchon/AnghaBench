
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int device_t ;


 int BUS_ADD_CHILD (int ,int ,int ,int ) ;
 int ISA_ORDER_SPECULATIVE ;
 int PCF_NAME ;

__attribute__((used)) static void
pcf_isa_identify(driver_t *driver, device_t parent)
{
 BUS_ADD_CHILD(parent, ISA_ORDER_SPECULATIVE, PCF_NAME, 0);

 return;
}
