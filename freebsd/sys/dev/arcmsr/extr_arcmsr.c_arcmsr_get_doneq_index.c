
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct HBD_MessageUnit0 {int doneq_index; } ;


 int ARCMSR_MAX_HBD_POSTQUEUE ;

__attribute__((used)) static uint16_t arcmsr_get_doneq_index(struct HBD_MessageUnit0 *phbdmu)
{
 uint16_t doneq_index, index_stripped;

 doneq_index = phbdmu->doneq_index;
 if (doneq_index & 0x4000) {
  index_stripped = doneq_index & 0xFF;
  index_stripped += 1;
  index_stripped %= ARCMSR_MAX_HBD_POSTQUEUE;
  phbdmu->doneq_index = index_stripped ?
      (index_stripped | 0x4000) : index_stripped;
 } else {
  index_stripped = doneq_index;
  index_stripped += 1;
  index_stripped %= ARCMSR_MAX_HBD_POSTQUEUE;
  phbdmu->doneq_index = index_stripped ?
      index_stripped : (index_stripped | 0x4000);
 }
 return (phbdmu->doneq_index);
}
