
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;



__attribute__((used)) static int
lio_is_mac_changed(uint8_t *new, uint8_t *old)
{

 return ((new[0] != old[0]) || (new[1] != old[1]) ||
  (new[2] != old[2]) || (new[3] != old[3]) ||
  (new[4] != old[4]) || (new[5] != old[5]));
}
