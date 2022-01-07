
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sense_header_scsi {int response_code; } ;
typedef int boolean_t ;


 int DBG_FUNC (char*) ;

__attribute__((used)) static inline boolean_t pqisrc_scsi_sense_valid(const struct sense_header_scsi *sshdr)
{
 DBG_FUNC("IN\n");

 if (!sshdr)
  return 0;

 DBG_FUNC("OUT\n");

 return (sshdr->response_code & 0x70) == 0x70;
}
