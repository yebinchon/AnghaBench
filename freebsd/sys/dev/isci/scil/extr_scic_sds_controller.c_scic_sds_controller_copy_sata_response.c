
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int SATA_FIS_REG_D2H_T ;


 int memcpy (char*,void*,int) ;

void scic_sds_controller_copy_sata_response(
   void * response_buffer,
   void * frame_header,
   void * frame_buffer
)
{
   memcpy(
      response_buffer,
      frame_header,
      sizeof(U32)
   );

   memcpy(
      (char *)((char *)response_buffer + sizeof(U32)),
      frame_buffer,
      sizeof(SATA_FIS_REG_D2H_T) - sizeof(U32)
   );
}
