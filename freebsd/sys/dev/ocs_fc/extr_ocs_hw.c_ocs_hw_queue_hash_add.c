
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {int in_use; int id; int index; } ;
typedef TYPE_1__ ocs_queue_hash_t ;


 int OCS_HW_Q_HASH_SIZE ;

__attribute__((used)) static void
ocs_hw_queue_hash_add(ocs_queue_hash_t *hash, uint16_t id, uint16_t index)
{
 uint32_t hash_index = id & (OCS_HW_Q_HASH_SIZE - 1);





 while(hash[hash_index].in_use) {
  hash_index = (hash_index + 1) & (OCS_HW_Q_HASH_SIZE - 1);
 }


 hash[hash_index].id = id;
 hash[hash_index].in_use = 1;
 hash[hash_index].index = index;
}
