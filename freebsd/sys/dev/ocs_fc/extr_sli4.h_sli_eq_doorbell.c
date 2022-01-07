
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 int SLI4_EQCQ_EQ_ID_MASK_LO ;
 int TRUE ;

__attribute__((used)) static inline uint32_t sli_eq_doorbell(uint16_t n_popped, uint16_t id, uint8_t arm)
{
 uint32_t reg = 0;

 struct {
  uint32_t eq_id_lo:9,
    ci:1,
    qt:1,
    eq_id_hi:5,
    number_popped:13,
    arm:1,
    :1,
    se:1;
 } * eq_doorbell = (void *)&reg;




 eq_doorbell->eq_id_lo = id & SLI4_EQCQ_EQ_ID_MASK_LO;
 eq_doorbell->qt = 1;
 eq_doorbell->eq_id_hi = (id >> 9) & 0x1f;
 eq_doorbell->number_popped = n_popped;
 eq_doorbell->arm = arm;
 eq_doorbell->ci = TRUE;

 return reg;
}
