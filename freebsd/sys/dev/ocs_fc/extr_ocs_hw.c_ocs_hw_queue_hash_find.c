
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int id; int index; scalar_t__ in_use; } ;
typedef TYPE_1__ ocs_queue_hash_t ;
typedef int int32_t ;


 int OCS_HW_Q_HASH_SIZE ;

int32_t
ocs_hw_queue_hash_find(ocs_queue_hash_t *hash, uint16_t id)
{
 int32_t rc = -1;
 int32_t index = id & (OCS_HW_Q_HASH_SIZE - 1);






 do {
  if (hash[index].in_use &&
      hash[index].id == id) {
   rc = hash[index].index;
  } else {
   index = (index + 1) & (OCS_HW_Q_HASH_SIZE - 1);
  }
 } while(rc == -1 && hash[index].in_use);

 return rc;
}
