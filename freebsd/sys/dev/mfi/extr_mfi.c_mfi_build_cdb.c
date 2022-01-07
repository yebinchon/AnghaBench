
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int u_int64_t ;
typedef int u_int32_t ;
struct scsi_rw_6 {int length; scalar_t__ control; int addr; int opcode; } ;
struct scsi_rw_16 {scalar_t__ control; int length; scalar_t__ reserved; int addr; scalar_t__ byte2; int opcode; } ;
struct scsi_rw_12 {scalar_t__ control; int length; scalar_t__ reserved; int addr; scalar_t__ byte2; int opcode; } ;
struct scsi_rw_10 {scalar_t__ control; int length; scalar_t__ reserved; int addr; scalar_t__ byte2; int opcode; } ;


 int READ_10 ;
 int READ_12 ;
 int READ_16 ;
 int READ_6 ;
 int WRITE_10 ;
 int WRITE_12 ;
 int WRITE_16 ;
 int WRITE_6 ;
 int scsi_u64to8b (int,int ) ;
 int scsi_ulto2b (int,int ) ;
 int scsi_ulto3b (int,int ) ;
 int scsi_ulto4b (int,int ) ;

int
mfi_build_cdb(int readop, uint8_t byte2, u_int64_t lba, u_int32_t block_count, uint8_t *cdb)
{
 int cdb_len;

 if (((lba & 0x1fffff) == lba)
         && ((block_count & 0xff) == block_count)
         && (byte2 == 0)) {

  struct scsi_rw_6 *scsi_cmd;

  scsi_cmd = (struct scsi_rw_6 *)cdb;
  scsi_cmd->opcode = readop ? READ_6 : WRITE_6;
  scsi_ulto3b(lba, scsi_cmd->addr);
  scsi_cmd->length = block_count & 0xff;
  scsi_cmd->control = 0;
  cdb_len = sizeof(*scsi_cmd);
 } else if (((block_count & 0xffff) == block_count) && ((lba & 0xffffffff) == lba)) {

  struct scsi_rw_10 *scsi_cmd;

  scsi_cmd = (struct scsi_rw_10 *)cdb;
  scsi_cmd->opcode = readop ? READ_10 : WRITE_10;
  scsi_cmd->byte2 = byte2;
  scsi_ulto4b(lba, scsi_cmd->addr);
  scsi_cmd->reserved = 0;
  scsi_ulto2b(block_count, scsi_cmd->length);
  scsi_cmd->control = 0;
  cdb_len = sizeof(*scsi_cmd);
 } else if (((block_count & 0xffffffff) == block_count) &&
     ((lba & 0xffffffff) == lba)) {

  struct scsi_rw_12 *scsi_cmd;

  scsi_cmd = (struct scsi_rw_12 *)cdb;
  scsi_cmd->opcode = readop ? READ_12 : WRITE_12;
  scsi_cmd->byte2 = byte2;
  scsi_ulto4b(lba, scsi_cmd->addr);
  scsi_cmd->reserved = 0;
  scsi_ulto4b(block_count, scsi_cmd->length);
  scsi_cmd->control = 0;
  cdb_len = sizeof(*scsi_cmd);
 } else {




  struct scsi_rw_16 *scsi_cmd;

  scsi_cmd = (struct scsi_rw_16 *)cdb;
  scsi_cmd->opcode = readop ? READ_16 : WRITE_16;
  scsi_cmd->byte2 = byte2;
  scsi_u64to8b(lba, scsi_cmd->addr);
  scsi_cmd->reserved = 0;
  scsi_ulto4b(block_count, scsi_cmd->length);
  scsi_cmd->control = 0;
  cdb_len = sizeof(*scsi_cmd);
 }

 return cdb_len;
}
