
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static void
mbox_store_word(uint8_t *mbox, uint32_t val)
{

 mbox[0] = val & 0xff;
 mbox[1] = val >> 8 & 0xff;
 mbox[2] = val >> 16 & 0xff;
 mbox[3] = val >> 24;
}
