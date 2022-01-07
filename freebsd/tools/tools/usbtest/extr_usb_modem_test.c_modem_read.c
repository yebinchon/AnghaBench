
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct TYPE_2__ {int rx_bytes; } ;


 int do_bps (char*,int *,size_t) ;
 TYPE_1__ modem ;
 int modem_in_state (int ,size_t) ;

__attribute__((used)) static void
modem_read(uint8_t *buf, uint32_t len)
{
 uint32_t n;

 for (n = 0; n != len; n++) {
  modem_in_state(buf[n], n);
 }

 do_bps("received", &modem.rx_bytes, len);
}
