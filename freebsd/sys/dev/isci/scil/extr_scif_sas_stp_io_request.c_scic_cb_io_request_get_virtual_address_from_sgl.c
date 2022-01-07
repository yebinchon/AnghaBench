
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int U32 ;
typedef void SCIF_SAS_REQUEST_T ;


 scalar_t__ sci_object_get_association (void*) ;
 int * scif_cb_io_request_get_virtual_address_from_sgl (scalar_t__,int ) ;

U8 *scic_cb_io_request_get_virtual_address_from_sgl(
   void * scic_user_io_request,
   U32 byte_offset
)
{
   SCIF_SAS_REQUEST_T *fw_request =
      (SCIF_SAS_REQUEST_T *) sci_object_get_association(scic_user_io_request);

   return scif_cb_io_request_get_virtual_address_from_sgl(
             sci_object_get_association(fw_request),
             byte_offset
          );
}
