
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;



__attribute__((used)) static inline void
sli_set_wq_id_association(void *entry, uint16_t q_id)
{
 uint32_t *wqe = entry;






 wqe[10] &= ~0xffff;
 wqe[10] |= q_id << 1;



}
