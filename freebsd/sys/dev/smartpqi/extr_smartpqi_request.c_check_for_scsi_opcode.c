
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int boolean_t ;


 int GET_BE16 (int*) ;
 int GET_BE32 (int*) ;
 int GET_BE64 (int*) ;
 int PQI_STATUS_FAILURE ;
 int PQI_STATUS_SUCCESS ;
int check_for_scsi_opcode(uint8_t *cdb, boolean_t *is_write, uint64_t *fst_blk,
    uint32_t *blk_cnt) {

 switch (cdb[0]) {
 case 128:
  *is_write = 1;
 case 132:
  *fst_blk = (uint64_t)(((cdb[1] & 0x1F) << 16) |
    (cdb[2] << 8) | cdb[3]);
  *blk_cnt = (uint32_t)cdb[4];
  if (*blk_cnt == 0)
   *blk_cnt = 256;
  break;
 case 131:
  *is_write = 1;
 case 135:
  *fst_blk = (uint64_t)GET_BE32(&cdb[2]);
  *blk_cnt = (uint32_t)GET_BE16(&cdb[7]);
  break;
 case 130:
  *is_write = 1;
 case 134:
  *fst_blk = (uint64_t)GET_BE32(&cdb[2]);
  *blk_cnt = GET_BE32(&cdb[6]);
  break;
 case 129:
  *is_write = 1;
 case 133:
  *fst_blk = GET_BE64(&cdb[2]);
  *blk_cnt = GET_BE32(&cdb[10]);
  break;
 default:

  return PQI_STATUS_FAILURE;
 }
 return PQI_STATUS_SUCCESS;
}
