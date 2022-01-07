
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_2__ {scalar_t__ state; scalar_t__* node; } ;


 scalar_t__ UUID_ETHER_EMPTY ;
 scalar_t__ UUID_ETHER_RANDOM ;
 int UUID_NODE_LEN ;
 scalar_t__ arc4random () ;
 TYPE_1__* uuid_ether ;

__attribute__((used)) static void
uuid_node(uint16_t *node)
{
 int i;

 if (uuid_ether[0].state == UUID_ETHER_EMPTY) {
  for (i = 0; i < (UUID_NODE_LEN>>1); i++)
   uuid_ether[0].node[i] = (uint16_t)arc4random();
  *((uint8_t*)uuid_ether[0].node) |= 0x01;
  uuid_ether[0].state = UUID_ETHER_RANDOM;
 }
 for (i = 0; i < (UUID_NODE_LEN>>1); i++)
  node[i] = uuid_ether[0].node[i];
}
