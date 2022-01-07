
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ state; int node; } ;


 int ENOENT ;
 scalar_t__ UUID_ETHER_EMPTY ;
 scalar_t__ UUID_ETHER_UNIQUE ;
 int UUID_NETHER ;
 int UUID_NODE_LEN ;
 scalar_t__ bcmp (int const*,int ,int ) ;
 int bzero (int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 TYPE_1__* uuid_ether ;
 int uuid_mutex ;

int
uuid_ether_del(const uint8_t *addr)
{
 int i;

 mtx_lock(&uuid_mutex);
 i = 0;
 while (i < UUID_NETHER && uuid_ether[i].state == UUID_ETHER_UNIQUE &&
     bcmp(addr, uuid_ether[i].node, UUID_NODE_LEN))
  i++;
 if (i == UUID_NETHER || uuid_ether[i].state != UUID_ETHER_UNIQUE) {
  mtx_unlock(&uuid_mutex);
  return (ENOENT);
 }


 while (i < UUID_NETHER - 1 && uuid_ether[i].state != UUID_ETHER_EMPTY) {
  uuid_ether[i] = uuid_ether[i + 1];
  i++;
 }
 if (uuid_ether[i].state != UUID_ETHER_EMPTY) {
  uuid_ether[i].state = UUID_ETHER_EMPTY;
  bzero(uuid_ether[i].node, UUID_NODE_LEN);
 }
 mtx_unlock(&uuid_mutex);
 return (0);
}
