
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int BOOL ;







 int FALSE ;
 int PASSTHROUGH_CDB_COMMAND (int*,int) ;
 scalar_t__ PASSTHROUGH_CDB_MULTIPLE_COUNT (int*) ;
 scalar_t__ SCSI_ATA_PASSTHRU_12 ;
 int TRUE ;
 scalar_t__ sati_get_cdb_byte (int*,int ) ;

__attribute__((used)) static
BOOL sati_passthrough_multiple_count_error(
   U8 * cdb
)
{
   U8 ata_command_code;

   if(PASSTHROUGH_CDB_MULTIPLE_COUNT(cdb) > 0)
   {
      if(sati_get_cdb_byte(cdb, 0 ) == SCSI_ATA_PASSTHRU_12)
      {
         ata_command_code = PASSTHROUGH_CDB_COMMAND(cdb, 9);
      }
      else
      {
         ata_command_code = PASSTHROUGH_CDB_COMMAND(cdb, 14);
      }

      switch(ata_command_code)
      {
         case 132:
         case 131:
         case 130:
         case 129:
         case 128:
            return FALSE;
         break;

         default:
            return TRUE;
      }
   }

   return FALSE;
}
