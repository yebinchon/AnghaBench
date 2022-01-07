
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int DMAWFP ;

__attribute__((used)) static uint32_t
emit_wfp(uint8_t *buf, uint32_t p_id)
{

 buf[0] = DMAWFP;
 buf[0] |= (1 << 0);
 buf[1] = (p_id << 3);

 return (2);
}
