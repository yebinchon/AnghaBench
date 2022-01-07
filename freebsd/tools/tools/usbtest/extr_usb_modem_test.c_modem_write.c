
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int tx_bytes; } ;


 int do_bps (char*,int *,scalar_t__) ;
 TYPE_1__ modem ;
 int modem_out_state (int *) ;

__attribute__((used)) static void
modem_write(uint8_t *buf, uint32_t len)
{
 uint32_t n;

 for (n = 0; n != len; n++) {
  modem_out_state(buf + n);
 }

 do_bps("transmitted", &modem.tx_bytes, len);
}
