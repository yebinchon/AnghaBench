
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int CARD_OFF ;
 int cbb_cardbus_reset_power (int ,int ,int ) ;
 int cbb_power (int ,int ) ;

__attribute__((used)) static int
cbb_cardbus_power_disable_socket(device_t brdev, device_t child)
{
 cbb_power(brdev, CARD_OFF);
 cbb_cardbus_reset_power(brdev, child, 0);
 return (0);
}
