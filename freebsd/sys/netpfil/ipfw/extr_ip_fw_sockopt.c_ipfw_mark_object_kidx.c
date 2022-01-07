
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;


 int IPFW_TABLES_MAX ;
 scalar_t__ IPFW_TLV_TBL_NAME ;

int
ipfw_mark_object_kidx(uint32_t *bmask, uint16_t etlv, uint16_t kidx)
{
 uint32_t bidx;




 bidx = (etlv == IPFW_TLV_TBL_NAME) ? 0: IPFW_TABLES_MAX / 32;
 bidx += kidx / 32;
 if ((bmask[bidx] & (1 << (kidx % 32))) != 0)
  return (0);

 bmask[bidx] |= 1 << (kidx % 32);
 return (1);
}
