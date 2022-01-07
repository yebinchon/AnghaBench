
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static void
mbox_store_device_id(uint8_t *mbox, uint16_t device_id)
{

 mbox[0] = device_id & 0xff;
 mbox[1] = device_id >> 8;
}
