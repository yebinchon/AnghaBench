
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int rq_hash; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef int int32_t ;


 int ocs_hw_queue_hash_find (int ,int ) ;

__attribute__((used)) static inline int32_t
ocs_hw_rqpair_find(ocs_hw_t *hw, uint16_t rq_id)
{
 return ocs_hw_queue_hash_find(hw->rq_hash, rq_id);
}
