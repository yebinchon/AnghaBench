
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SMP_REQUEST_T ;
typedef int SCIF_SAS_REMOTE_DEVICE_T ;
typedef int SCIF_SAS_IO_REQUEST_T ;
typedef int SCIF_SAS_CONTROLLER_T ;


 int ASSERT (int ) ;
 int SCIF_LOG_ERROR (int ) ;
 int SCIF_LOG_OBJECT_IO_REQUEST ;
 int SCI_CONTROLLER_INVALID_IO_TAG ;
 int sci_base_object_get_logger (int *) ;
 void* scif_sas_controller_allocate_internal_request (int *) ;
 int scif_sas_internal_io_request_construct_smp (int *,int *,void*,int ,int *) ;
 int scif_sas_io_request_construct_smp (int *,int *,void*,char*,int ,int *,void*) ;

__attribute__((used)) static
void * scif_sas_smp_request_build(
   SCIF_SAS_CONTROLLER_T * fw_controller,
   SCIF_SAS_REMOTE_DEVICE_T * fw_device,
   SMP_REQUEST_T * smp_request,
   void * external_request_object,
   void * external_memory
)
{
   if (external_memory != ((void*)0) && external_request_object != ((void*)0))
   {
      scif_sas_io_request_construct_smp(
         fw_controller,
         fw_device,
         external_memory,
         (char *)external_memory + sizeof(SCIF_SAS_IO_REQUEST_T),
         SCI_CONTROLLER_INVALID_IO_TAG,
         smp_request,
         external_request_object
      );

      return external_memory;
   }
   else
   {
      void * internal_io_memory;
      internal_io_memory = scif_sas_controller_allocate_internal_request(fw_controller);
      ASSERT(internal_io_memory != ((void*)0));

      if (internal_io_memory != ((void*)0))
      {

         scif_sas_internal_io_request_construct_smp(
            fw_controller,
            fw_device,
            internal_io_memory,
            SCI_CONTROLLER_INVALID_IO_TAG,
            smp_request
         );
      }
      else
      {
         SCIF_LOG_ERROR((
            sci_base_object_get_logger(fw_controller),
            SCIF_LOG_OBJECT_IO_REQUEST,
            "scif_sas_smp_request_build, no memory available!\n"
         ));
      }

      return internal_io_memory;
   }
}
