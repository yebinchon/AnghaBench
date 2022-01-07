
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int SCI_LIBRARY_HANDLE_T ;


 int SCU_IO_REQUEST_MAX_SGE_SIZE ;

U32 scic_library_get_max_sge_size(
   SCI_LIBRARY_HANDLE_T library
)
{
   return SCU_IO_REQUEST_MAX_SGE_SIZE;
}
