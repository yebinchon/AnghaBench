
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 int SLI4_EQCQ_CQ_ID_MASK_LO ;

__attribute__((used)) static inline uint32_t sli_cq_doorbell(uint16_t n_popped, uint16_t id, uint8_t arm)
{
 uint32_t reg = 0;

 struct {
  uint32_t cq_id_lo:10,
    qt:1,
    cq_id_hi:5,
    number_popped:13,
    arm:1,
    :1,
    se:1;
 } * cq_doorbell = (void *)&reg;




 cq_doorbell->cq_id_lo = id & SLI4_EQCQ_CQ_ID_MASK_LO;
 cq_doorbell->qt = 0;
 cq_doorbell->cq_id_hi = (id >> 10) & 0x1f;
 cq_doorbell->number_popped = n_popped;
 cq_doorbell->arm = arm;

 return reg;
}
