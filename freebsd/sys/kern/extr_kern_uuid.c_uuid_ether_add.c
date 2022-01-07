
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ state; int node; } ;


 int EEXIST ;
 int EINVAL ;
 int ENOSPC ;
 scalar_t__ UUID_ETHER_RANDOM ;
 scalar_t__ UUID_ETHER_UNIQUE ;
 int UUID_NETHER ;
 int UUID_NODE_LEN ;
 int bcmp (int const*,int ,int) ;
 int bcopy (int const*,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 TYPE_1__* uuid_ether ;
 int uuid_mutex ;

int
uuid_ether_add(const uint8_t *addr)
{
 int i, sum;





 if (addr[0] & 0x03)
  return (EINVAL);
 sum = 0;
 for (i = 0; i < UUID_NODE_LEN; i++)
  sum += addr[i];
 if (sum == 0)
  return (EINVAL);

 mtx_lock(&uuid_mutex);


 i = 0;
 while (i < UUID_NETHER && uuid_ether[i].state == UUID_ETHER_UNIQUE) {
  if (!bcmp(addr, uuid_ether[i].node, UUID_NODE_LEN)) {
   mtx_unlock(&uuid_mutex);
   return (EEXIST);
  }
  i++;
 }
 if (i == UUID_NETHER) {
  mtx_unlock(&uuid_mutex);
  return (ENOSPC);
 }


 if (uuid_ether[i].state == UUID_ETHER_RANDOM && i < UUID_NETHER - 1)
  uuid_ether[i + 1] = uuid_ether[i];
 uuid_ether[i].state = UUID_ETHER_UNIQUE;
 bcopy(addr, uuid_ether[i].node, UUID_NODE_LEN);
 mtx_unlock(&uuid_mutex);
 return (0);
}
