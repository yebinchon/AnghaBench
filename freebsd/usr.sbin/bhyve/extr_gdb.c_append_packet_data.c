
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int cur_csum ;
 int send_data (scalar_t__ const*,size_t) ;

__attribute__((used)) static void
append_packet_data(const uint8_t *data, size_t len)
{

 send_data(data, len);
 while (len > 0) {
  cur_csum += *data;
  data++;
  len--;
 }
}
