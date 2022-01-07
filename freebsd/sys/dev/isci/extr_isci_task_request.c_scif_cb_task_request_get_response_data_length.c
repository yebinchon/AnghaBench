
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_sense_data {int dummy; } ;



uint32_t
scif_cb_task_request_get_response_data_length(void * scif_user_task_request)
{

 return (sizeof(struct scsi_sense_data));
}
